import { Module } from "@nestjs/common";
import { ExchangeRateService } from "./rates.service";
import { CommonModule } from "../common";
import { ExchangeRateResolver } from "./rates.resolver";


@Module({
    imports: [CommonModule],
    providers: [ ExchangeRateService, ExchangeRateResolver],
})
export class ExchangeRateModule {}
