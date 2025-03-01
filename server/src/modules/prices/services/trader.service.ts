import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../../common";
import { $Enums } from "@prisma/client";

@Injectable()
export class TraderService {
    private prisma: PrismaService;

    public constructor(private readonly logger: LoggerService) {}

    public async create(params: { name: $Enums.MarketName | string }) {
        this.logger.info("Create Traders");

        try {
            await this.prisma.traders.create({
                data: {
                    name: params.name,
                },
            });
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
            return [];
        }
    }

    public async getByName(params: { name: $Enums.MarketName | string }) {
        this.logger.info("Create Traders");

        try {
            const trader = await this.prisma.traders.findFirst({
                where: {
                    name: params.name,
                },
            });
            return trader;
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
            return [];
        }
    }
    public async getById(params: { id: number }) {
        this.logger.info("Create Traders");

        try {
            const trader = await this.prisma.traders.findFirst({
                where: {
                    id: params.id,
                },
            });
            return trader;
        } catch (error: any) {
            this.logger.error(
                "Could not fetch platform account: " + error.message
            );
            return [];
        }
    }
}
