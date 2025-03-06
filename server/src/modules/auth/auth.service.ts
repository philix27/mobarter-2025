import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import { NotificationService } from "../notification/notification.service";
import {
    Auth_CreateAccountInput,
    Auth_CreateAccountResponse,
    Auth_LoginInput,
    Auth_LogoutInput,
    Auth_ResetPasswordInput,
    Auth_sendEmailOtpInput,
    Auth_sendEmailOtpResponse,
    Auth_verifyEmailOtpInput,
    Auth_verifyOtpResponse,
} from "./auth.dto";
import { UserService } from "../user/user.service";
import { WalletCryptoService } from "../wallet-crypto/crypto.service";
import { WalletFiatService } from "../wallet-fiat/fiat.service";
import { JwtCryptoService } from "./jwt.service";
import { GqlErr } from "../common/errors/gqlErr";

@Injectable()
export class AuthService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly notification: NotificationService,
        private readonly prisma: PrismaService,
        private readonly userService: UserService,
        private readonly cryptoWallet: WalletCryptoService,
        private readonly fiatWallet: WalletFiatService,
        private readonly jwtService: JwtCryptoService
    ) {}

    public async sendEmailOtp(
        params: Auth_sendEmailOtpInput
    ): Promise<Auth_sendEmailOtpResponse> {
        this.logger.info("sendEmailOtp");

        if (!this.isValidEmail(params.email))
            throw GqlErr("Invalid email address");

        const otp = this.jwtService.generateOTP();
        this.logger.info("sendEmailOtp: " + otp);

        try {
            const token = this.jwtService.generateToken({ otp });
            await this.notification.sendEmailOtp({ email: params.email, otp });
            // todo: return jwt token with otp
            return {
                message: "Otp sent successfully",
                token,
            };
        } catch (error) {
            this.logger.error("Could not send otp to email: " + error.message);
            return {
                message: error.message,
                token: "",
            };
        }
    }

    public async verifyEmailOtp(
        params: Auth_verifyEmailOtpInput
    ): Promise<Auth_verifyOtpResponse> {
        this.logger.info("VerifyEmailOtp: ");
        const isValid = this.jwtService.verifyOTP(params.token, params.otp);

        if (!isValid) throw GqlErr("Invalid otp");

        return { message: "Valid otp" };
    }

    public async createAccount(
        params: Auth_CreateAccountInput
    ): Promise<Auth_CreateAccountResponse> {
        // try {
        this.logger.info("Create user account");

        if (!this.isValidEmail(params.email))
            throw GqlErr("Invalid email address");

        if (params.password.length < 8) throw GqlErr("Password too short");

        const hashedPassword = await this.jwtService.hashPassword(
            params.password
        );

        const user = await this.userService.create({
            firstname: params.firstname,
            lastname: params.lastname,
            email: params.email,
            country: params.country,
            password: hashedPassword,
        });

        if (!user) throw GqlErr("Could not create user");

        await this.cryptoWallet.createWalletsForNewUser({
            userId: user.id,
        });

        await this.fiatWallet.createWalletsForNewUser({ ...user });

        await this.notification.sendWelcomeMessage({ email: params.email });

        return {
            message: "Created successfully",
        };
    }

    public async resetPassword(params: Auth_ResetPasswordInput) {
        // todoInput:
    }

    public async login(params: Auth_LoginInput) {
        try {
            this.logger.info("Fetch user info");
            const user = await this.prisma.user.findFirst({
                where: {
                    email: params.email,
                },
            });

            if (!user) {
                this.logger.error("Invalid credentials");
                throw GqlErr("Invalid credentials");
            }

            const isValid = await this.jwtService.verifyPassword(
                params.password,
                user?.password
            );

            if (!isValid) {
                this.logger.error("user password doesn't match");
                throw GqlErr("Invalid credentials");
            }

            return {
                country: user.country,
                email: user.email,
                firstname: user.firstname,
                lastname: user.lastname,
                middlename: user.middlename,
            };
        } catch (error) {
            this.logger.error("Login user: " + error.message);
        }
    }

    public async logout(params: Auth_LogoutInput) {
        // todo:
        this.logger.info("Deleting platform");
    }

    isValidEmail(email: string) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
}
