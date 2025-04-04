import { Module } from "@nestjs/common";
import { ExchangeRateService } from "./rates.service";
import { LoggerService } from "../common";
import { VendorGuard } from "../common/guards";
import { HelperService } from "../helper/helper.service";

@Module({
    providers: [LoggerService, ExchangeRateService,    VendorGuard,
        HelperService,],
})
export class ExchangeRateModule {}
