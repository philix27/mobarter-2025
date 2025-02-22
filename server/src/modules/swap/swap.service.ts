import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { NotificationService } from "../notification/notification.service";
import {
    Auth_CreateAccount,
    Auth_Login,
    Auth_Logout,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./swap.dto";

@Injectable()
export class SwapService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly notification: NotificationService
    ) {}

    public async sendEmailOtp(params: Auth_sendEmailOtp) {
        this.logger.info("Creating platform account ...");

        const otp = this.genOtp();

        try {
            await this.notification.sendEmailOtp({ email: params.email, otp });
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async verifyEmailOtp(params: Auth_verifyEmailOtp) {
        this.logger.info("Creating platform account ...");

        //    todo: Create Account
    }

    public async createAccount(params: Auth_CreateAccount) {
        try {
            await this.notification.sendWelcomeMessage({ email: params.email });
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async resetPassword(params: Auth_ResetPassword) {}

    public async login(params: Auth_Login) {}

    public async logout(params: Auth_Logout) {
        this.logger.info("Deleting platform");
    }

    private genOtp(): string {
        return "0";
    }
}
