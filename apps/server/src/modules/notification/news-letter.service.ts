import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";

@Injectable()
export class NewsLetterService {
    public constructor(private readonly logger: LoggerService) {}

    public async subscribe(params: { email: string }) {
        this.logger.info("NotificationService: sendEmailOtp ...");
        await this.sendWelcomeMessage({ email: params.email });
    }

    public async unSubscribe(params: { email: string }) {
        this.logger.info("NotificationService: sendEmailOtp ...");
    }

    private async sendWelcomeMessage(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }

    public async sendLetter(params: { email: string }) {
        this.logger.info("Fetching platform accounts");
    }
}
