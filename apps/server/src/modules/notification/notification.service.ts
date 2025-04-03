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
        this.logger.info("NotificationService sendPhoneOtpToWhatsApp");
    }

    public async sendWelcomeMessage(params: { email: string }) {
        this.logger.info("NotificationService sendWelcomeMessage");
    }

    public async sendP2pMessage(params: { email: string }) {
        this.logger.info("NotificationService sendP2pMessage");
    }

    public async orderCreated(params: { email: string }) {
        this.logger.info("NotificationService orderCreated");
    }

    public async orderCompleted(params: { email: string }) {
        this.logger.info("NotificationService orderCompleted");
    }
}
