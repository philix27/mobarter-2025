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

type User = { userId: number };
@Injectable()
export class AdvertsService {
    public constructor(
        private readonly logger: LoggerService,
        // private readonly notification: NotificationService
        private readonly prisma: PrismaService
    ) {}

    public async getAll(
        params: Advert_GetAllInput & User
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
        params: Advert_UpdateInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.getAll.name);

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
        params: Advert_CreateInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.getAll.name);
        const ads = await this.prisma.adverts.create({
            data: { ...params, merchant_id: params.userId },
        });
        return ads;
    }

    public async getOne(
        params: Advert_GetOneInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.getAll.name);
        const ads = await this.prisma.adverts.findFirst({
            where: {
                id: params.id,
            },
        });

        if (!ads) throw GqlErr("No advert found!");

        return ads;
    }
    public async getMerchantAdverts(
        params: Advert_GetAllMerchantAdsInput & User
    ): Promise<Advert_AdvertResponse[]> {
        this.logger.info(this.getAll.name);
        const ads = await this.prisma.adverts.findMany({
            where: {
                merchant_id: params.userId,
            },
        });

        return ads;
    }

    public async delete(
        params: Advert_DeleteInput & User
    ): Promise<Advert_AdvertResponse> {
        this.logger.info(this.getAll.name);
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
