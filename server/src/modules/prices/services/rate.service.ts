import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../../common";
import { $Enums } from "@prisma/client";

@Injectable()
export class PriceRateService {
    private prisma: PrismaService;

    public constructor(private readonly logger: LoggerService) {}

    public async createRate(params: {
        currencyType: $Enums.CurrencyType;
        currencyName: $Enums.CurrencyName;
        buyRate: number;
        sellRate: number;
        trader_id: number;
    }) {
        this.logger.info("create price rate");

        try {
            await this.prisma.priceRate.create({
                data: {
                    currencyType: params.currencyType,
                    name: params.currencyName,
                    buyRate: params.buyRate,
                    sellRate: params.sellRate,
                    trader_id: params.trader_id,
                },
            });
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
        }
    }

    public async getRate(params: {
        currencyType?: $Enums.CurrencyType;
        name?: $Enums.CurrencyName;
        sellRate?: number;
        buyRate?: number;
    }) {
        this.logger.info("create price rate");

        try {
            const rate = await this.prisma.priceRate.findMany({
                where: {
                    buyRate: params.buyRate,
                    sellRate: params.sellRate,
                    currencyType: params.currencyType,
                    name: params.name,
                },
            });
            return rate;
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
        }
    }
}
