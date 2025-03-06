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
import * as bcryptjs from "bcryptjs";
import bcrypt = require("bcryptjs/umd/types");
import { UserService } from "../user/user.service";

@Injectable()
export class AuthService {
    saltRounds = 10;
    public constructor(
        private readonly logger: LoggerService,
        private readonly notification: NotificationService,
        private readonly prisma: PrismaService,
        private readonly userService: UserService
    ) {}

    public async sendEmailOtp(params: Auth_sendEmailOtp) {
        this.logger.info("Creating platform account ...");

        const otp = this.generateOTP();

        try {
            await this.notification.sendEmailOtp({ email: params.email, otp });
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async verifyEmailOtp(params: Auth_verifyEmailOtp) {
        this.logger.info("Creating platform account ...");
    }

    public async createAccount(params: Auth_CreateAccount) {
        try {
            this.logger.info("Create user account");
            const hashedPassword = await this.hashPassword(params.password);

            await this.userService.create({
                firstname: params.firstname,
                lastname: params.lastname,
                email: params.email,
                country: params.country,
                password: hashedPassword,
            });

            //    todo: Create Crypto Wallets
            await this.notification.sendWelcomeMessage({ email: params.email });

            //    todo: Create Account
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async resetPassword(params: Auth_ResetPassword) {}

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

            const isValid = await this.verifyPassword(
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
        this.logger.info("Deleting platform");
    }

    private generateOTP(length = 6) {
        const digits = "0123456789";
        let otp = "";
        for (let i = 0; i < length; i++) {
            otp += digits[Math.floor(Math.random() * digits.length)];
        }
        return otp;
    }

    // Function to hash a password
    private async hashPassword(password: string) {
        const salt = await bcryptjs.genSalt(this.saltRounds);
        return await bcrypt.hash(password, salt);
    }

    // Function to compare a password with a hashed password
    private async verifyPassword(password: string, hashedPassword: string) {
        return await bcrypt.compare(password, hashedPassword);
    }
}
