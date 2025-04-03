import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../../common";
import { $Enums } from "@prisma/client";

@Injectable()
export class SeedService {
    private prisma: PrismaService;

    public constructor(private readonly logger: LoggerService) {}

    public async createMarket(): Promise<string> {
        this.logger.info("creating markets");

        const currenciesList: $Enums.MarketName[] = [
            "BITMAMA",
            "CASHRAMP",
            "FONBANK",
            "ONERAMP",
            "TELEGRAM_WALLET",
        ];

        for (let curr of currenciesList) {
            try {
                await this.prisma.market.create({
                    data: {
                        name: curr,
                    },
                });
            } catch (error: any) {
                this.logger.error("Could not seed db" + error.message);
                return "Error";
            }
        }
        return "Successful";
    }
}
