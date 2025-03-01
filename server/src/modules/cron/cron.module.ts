import { Module } from "@nestjs/common";
import { CronService } from "./cron.service";
import { LoggerService } from "../common";

@Module({
    providers: [LoggerService, CronService],
})
export class CronModule {}
