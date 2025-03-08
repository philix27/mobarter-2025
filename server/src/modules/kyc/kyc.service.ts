import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { NotificationService } from "../notification/notification.service";
import {
    Auth_CreateAccount,
    Auth_Login,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./kyc.dto";

@Injectable()
export class KycServiceX {
    public async send1(params: Auth_sendEmailOtp) { }
    public async send2(params: Auth_sendEmailOtp) { }
    public async send3(params: Auth_sendEmailOtp) { }
 }
@Injectable()
export class KycService extends KycServiceX {
    public constructor(
        private readonly logger: LoggerService,
        private readonly notification: NotificationService
    ) {
        super();
    }

    public async sendPhoneOtp(params: Auth_sendEmailOtp) {
        this.logger.info("Creating platform account ...");

        const otp = this.genOtp();

        try {
            await this.notification.sendEmailOtp({ email: params.email, otp });
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async verifyPhoneOtp(params: Auth_verifyEmailOtp) {
        this.logger.info("Creating platform account ...");

        //    todo: Create Account
    }

    public async createTransactionPin(params: Auth_CreateAccount) {
        try {
            await this.notification.sendWelcomeMessage({ email: params.email });
            return "Sent successfully";
        } catch (error) {
            this.logger.error("Could not send otp to email");
        }
    }

    public async addBvn(params: Auth_ResetPassword) {}

    public async addNin(params: Auth_ResetPassword) {}

    public async getKycStatus(params: Auth_Login) {}
}
