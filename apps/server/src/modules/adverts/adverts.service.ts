import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    Advert_AdvertResponse,
    Advert_CreateInput,
    Advert_DeleteInput,
    Advert_GetAllInput,
    Advert_GetAllMerchantAdsInput,
    Advert_GetOneInput,
    Advert_UpdateInput,
} from "./adverts.dto";
import { GqlErr } from "../common/errors/gqlErr";
import { UserInput } from "../../lib";

@Injectable()
export class AdvertsService {
    public constructor(
        private readonly logger: LoggerService,
        // private readonly notification: NotificationService
        private readonly prisma: PrismaService
    ) {}

    public async getAll(
        params: Advert_GetAllInput & UserInput
    ): Promise<Advert_AdvertResponse[]> {
        this.logger.info(this.getAll.name);

        const ads = await this.prisma.adverts.findMany({
            where: {
                status: "OPEN",
            },
        });
        return ads;
    }

    public async update(
        params: Advert_UpdateInput & UserInput
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.update.name);

        const ads = await this.prisma.adverts.update({
            where: {
                id: params.id,
                merchant_id: params.userId,
            },
            data: { ...params },
        });
        return ads;
    }

    public async create(
        params: Advert_CreateInput & UserInput
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.create.name);
        try {
            const ads = await this.prisma.adverts.create({
                data: {
                    // ...params,
                    currencyFiat: params.currencyFiat,
                    currencyCrypto: params.currencyCrypto,
                    instructions: params.instructions,
                    limitLower: params.limitLower,
                    limitUpper: params.limitUpper,
                    status: params.advertStatus,
                    tradeType: params.tradeType,
                    duration: params.duration,
                    merchant_id: params.userId,
                },
            });
            return {
                ...ads,
                advertStatus: ads.status!,
            };
        } catch (error) {
            this.logger.error(error);
            throw GqlErr("Could not create advert: " + error);
        }
    }

    public async getOne(
        params: Advert_GetOneInput & UserInput
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.getOne.name);
        const ads = await this.prisma.adverts.findFirst({
            where: {
                id: params.id,
            },
        });

        if (!ads) throw GqlErr("No advert found!");

        return ads;
    }
    public async getMerchantAdverts(
        params: Advert_GetAllMerchantAdsInput & UserInput
    ): Promise<Advert_AdvertResponse[]> {
        this.logger.info(this.getMerchantAdverts.name);
        const ads = await this.prisma.adverts.findMany({
            where: {
                merchant_id: params.userId,
            },
        });

        return ads;
    }

    public async delete(
        params: Advert_DeleteInput & UserInput
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.delete.name);
        const ads = await this.prisma.adverts.update({
            where: {
                merchant_id: params.userId,
                id: params.id,
            },
            data: { status: "CLOSE" },
        });
        return ads;
    }
}
