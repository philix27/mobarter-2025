import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";

@Injectable()
export class NotificationService {
    public constructor(private readonly logger: LoggerService) {}

    public async sendEmailOtp(params: { email: string; otp: string }) {
        this.logger.info("NotificationService: sendEmailOtp ...");
    }

    public async sendPhoneOtp(params: { phoneNo: string; otp: string }) {
        this.logger.info("NotificationService sendPhoneOtp");
        await this.sendPhoneOtpToWhatsApp(params);
    }

    private async sendPhoneOtpToWhatsApp(params: {
        phoneNo: string;
        otp: string;
    }) {
        this.logger.info("NotificationService sendPhoneOtp");
    }

    public async sendWelcomeMessage(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }

    public async sendP2pMessage(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }

    public async orderCreated(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }

    public async orderCompleted(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }
}
