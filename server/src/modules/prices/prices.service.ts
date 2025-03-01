import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { PostGetOneInput } from "./prices.dto";
import { TraderService } from "./services/trader.service";
import { PriceRateService } from "./services/rate.service";
import { $Enums } from "@prisma/client";

@Injectable()
export class PricesService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly market: PriceRateService,
        private readonly traders: TraderService
    ) {}

    public async getMarket(
        params: { userId?: number } & PostGetOneInput
    ): Promise<[]> {
        this.logger.info("Fetching platform accounts");

        try {
            const res = await this.market.getRate({});
            if (!res) throw new Error("No trader");

            let marketPrices: {
                id: number;
                name: $Enums.CurrencyName;
                buyRate: number | null;
                sellRate: number | null;
                currencyType: $Enums.CurrencyType;
                created_at: Date | null;
                traderName: string | null;
            }[] = [];

            for (let rate of res) {
                const trader = await this.traders.getById({
                    id: rate.trader_id,
                });

                if (!trader) throw new Error("No trader found");

                const nTrader = trader as {
                    id: number;
                    name: string;
                    img: string | null;
                    created_at: Date | null;
                    updated_at: Date | null;
                    market_id: number;
                };
                marketPrices.push({
                    id: rate.id,
                    name: rate.name,
                    buyRate: rate.buyRate,
                    sellRate: rate.sellRate,
                    currencyType: rate.currencyType,
                    created_at: rate.created_at,
                    traderName: nTrader.name,
                });
            }

            return [];
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
            return [];
        }
    }
}
