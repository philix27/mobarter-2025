import { Injectable } from "@nestjs/common";
import { Cron, CronExpression} from "@nestjs/schedule";
import { LoggerService } from "../common";
import { ExchangeRateService } from "../rates/rates.service";

@Injectable()
export class CronService {
    public constructor(private readonly logger: LoggerService, private readonly fx:ExchangeRateService) {}
   

    @Cron(CronExpression.EVERY_HOUR)
    async getLatestRate() {
        this.logger.info("Running a daily task at midnight");
        await this.fx.updateRates()
    }

    @Cron(CronExpression.EVERY_WEEK)
    async validateReloadlyAccessToken() {
        this.logger.info("Running a daily task at midnight");
        await this.fx.updateRates()
    }

    //  // Runs at every 10 seconds
    // @Cron("*/10 * * * * *")
    // handleCron() {
    //     this.logger.info("Cron job executed every 10 seconds");
    // }
    // // Runs at midnight every day
    // @Cron(CronExpression.EVERY_DAY_AT_MIDNIGHT)
    // handleMidnightTask() {
        
    //     this.logger.info("Running a daily task at midnight");
    // }

    // // Runs at a fixed interval of 30 seconds
    // @Interval(30000)
    // handleInterval() {
    //     this.logger.info("Interval task executed every 30 seconds");
    // }

    // // Executes only once after 60 seconds on app startup
    // @Timeout(60000)
    // handleTimeout() {
    //     this.logger.info("Timeout task executed after 60 seconds");
    // }
}
