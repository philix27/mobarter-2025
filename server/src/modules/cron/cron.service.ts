import { Injectable } from "@nestjs/common";
import { Cron, CronExpression, Interval, Timeout } from "@nestjs/schedule";
import { LoggerService } from "../common";

@Injectable()
export class CronService {
    // private readonly logger: LoggerService;
    public constructor(private readonly logger: LoggerService) {}
    // Runs at every 10 seconds
    @Cron("*/10 * * * * *")
    handleCron() {
        this.logger.info("Cron job executed every 10 seconds");
    }

    // Runs at midnight every day
    @Cron(CronExpression.EVERY_DAY_AT_MIDNIGHT)
    handleMidnightTask() {
        this.logger.info("Running a daily task at midnight");
    }

    // Runs at a fixed interval of 30 seconds
    @Interval(30000)
    handleInterval() {
        this.logger.info("Interval task executed every 30 seconds");
    }

    // Executes only once after 60 seconds on app startup
    @Timeout(60000)
    handleTimeout() {
        this.logger.info("Timeout task executed after 60 seconds");
    }
}
