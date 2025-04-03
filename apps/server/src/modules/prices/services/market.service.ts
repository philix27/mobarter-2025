import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../../common";
import { PostDto } from "../prices.dto";

@Injectable()
export class MarketService {
    private prisma: PrismaService;

    public constructor(private readonly logger: LoggerService) {}

    public async getAll(): Promise<PostDto[]> {
        this.logger.info("Fetching platform accounts");

        try {
            const markets = await this.prisma.market.findMany();

            return markets;
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
            return [];
        }
    }
}
