import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import { NotificationService } from "../notification/notification.service";
import {
    Auth_CreateAccount,
    Auth_Login,
    Auth_Logout,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./auth.dto";
import { UserService } from "../user/user.service";
import { WalletCryptoService } from "../wallet-crypto/crypto.service";
import { WalletFiatService } from "../wallet-fiat/fiat.service";
import { JwtCryptoService } from "./jwt.service";

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

    public async sendEmailOtp(params: Auth_sendEmailOtp) {
        this.logger.info("Creating platform account ...");

        const otp = this.jwtService.generateOTP();

        try {
            const token = this.jwtService.generateToken(otp);
            await this.notification.sendEmailOtp({ email: params.email, otp });
            // todo: return jwt token with otp
            return {
                message: "Otp sent successfully",
                token,
            };
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async verifyEmailOtp(params: Auth_verifyEmailOtp) {
        this.logger.info("Creating platform account ...");
        this.jwtService.verifyOTP(params.token, params.otp);
        return { message: "Valid token" };
    }

    public async createAccount(params: Auth_CreateAccount) {
        try {
            this.logger.info("Create user account");
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

            if (!user) throw new Error("Could not create user");

            await this.cryptoWallet.createWalletsForNewUser({
                userId: user.id,
            });

            await this.fiatWallet.createWalletsForNewUser({ ...user });

            await this.notification.sendWelcomeMessage({ email: params.email });

            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async resetPassword(params: Auth_ResetPassword) {
        // todo:
    }

    public async login(params: Auth_Login) {
        try {
            this.logger.info("Fetch user info");
            const user = await this.prisma.user.findFirst({
                where: {
                    email: params.email,
                },
            });

            if (!user) {
                this.logger.error("Invalid credentials");
                throw new Error("Invalid credentials");
            }

            const isValid = await this.jwtService.verifyPassword(
                params.password,
                user?.password
            );

            if (!isValid) {
                this.logger.error("user password doesn't match");
                throw new Error("Invalid credentials");
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

    public async logout(params: Auth_Logout) {
        // todo:
        this.logger.info("Deleting platform");
    }
}
