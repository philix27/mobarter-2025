import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";

@Injectable()
export class NotificationService {
    public constructor(private readonly logger: LoggerService) {}

    public async sendEmailOtp(params: { email: string; otp: string }) {
        this.logger.info("Creating platform account ...");
    }

    public async sendPhoneOtp(params: { phoneNo: string; otp: string }) {
        this.logger.info("Creating platform account ...");
    }

    public async sendWelcomeMessage(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }
}
