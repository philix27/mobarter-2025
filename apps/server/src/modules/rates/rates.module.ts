import { Module } from "@nestjs/common";
import { ExchangeRateService } from "./rates.service";
import { CommonModule, LoggerService } from "../common";


@Module({
    imports: [CommonModule, ],
    providers: [LoggerService, ExchangeRateService,   
        ],
})
export class ExchangeRateModule {}
