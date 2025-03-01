import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { PricesService } from "./prices.service";
import { PricesResolver } from "./prices.resolver";
import { MarketService } from "./services/market.service";
import { TraderService } from "./services/trader.service";
import { PriceRateService } from "./services/rate.service";
import { SeedService } from "./services/seed.service";

@Module({
    imports: [CommonModule],
    providers: [
        PricesService,
        PricesResolver,
        MarketService,
        TraderService,
        PriceRateService,
        SeedService,
    ],
    exports: [],
})
export class PricesModule {}
