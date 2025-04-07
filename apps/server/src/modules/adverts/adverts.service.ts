import { Injectable } from "@nestjs/common";
import { LoggerService, PrismaService } from "../common";
import {
    Advert_CreateInput,
    Advert_DeleteInput,
    Advert_GetResponse,
    Advert_GetAllInput,
    Advert_GetOneInput,
    Advert_UpdateInput,
} from "./adverts.dto";
import { GqlErr } from "../common/errors/gqlErr";
import { UserInput } from "../../lib";

@Injectable()
export class AdvertsService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly prisma: PrismaService
    ) {}

    public async getAll(
        params: Advert_GetAllInput & UserInput
    ): Promise<Advert_GetResponse[]> {
        this.logger.info(this.getAll.name);

        const adverts = await this.prisma.adverts.findMany({
            where: {
                status: "OPEN",
            },
        });

        let list:Advert_GetResponse[]= []
        for await (const ad of adverts) {
            const merchant = await this.prisma.user.findFirst({
                where: {
                    id: ad.merchant_id,
                }
            })

            if (!merchant) {
                continue;
            }

            list.push({
                id: ad.id,
                merchant_id: ad.merchant_id,
                advertStatus: ad.status!,
                limitUpper: ad.limitUpper,
                limitLower: ad.limitLower,
                duration: ad.duration,
                instructions: ad.instructions,
                tradeType: ad.tradeType,
                currencyFiat: ad.currency_fiat,
                currencyCrypto: ad.currency_crypto,
                merchant_nickname: merchant.merchant_nickname || "Vendy Broski",
                merchant_trade_count: merchant.merchant_trade_count!,
                wallet_address: ad.wallet_address!,
                rateFixed: ad.rateFixed!,
                rateFloat: ad.rateFloat!,
                isFloatRate: !ad.isFloatRate 
                
            })
        }

        return list
    }

    public async update(
        params: Advert_UpdateInput & UserInput
    ): Promise<Advert_GetResponse> {
        this.logger.info(this.update.name);

        const ads = await this.prisma.adverts.update({
            where: {
                id: params.id,
                merchant_id: params.userId,
            },
            data: { ...params },
        });
        return {
            ...ads,
          rateFixed: params.rateFixed,
          rateFloat: params.rateFloat,
            isFloatRate: params.isFloatRate,
        //    merchant_nickname: params .merchant_nickname ,
        //         merchant_trade_count: merchant.merchant_trade_count!,
        //         merchant_wallet: ad.wallet_address!,
        };
    }

    public async create(
        params: Advert_CreateInput & UserInput
    ): Promise<Advert_GetResponse> {
        this.logger.info(this.create.name);
        try {

            const {isFloatRate, ...ads} = await this.prisma.adverts.create({
                data: {
                fiatAmountPerCrypto: params.fiatAmountPerCrypto,
                wallet_address: params.wallet_address,
                currency_fiat: params.currencyFiat,
                currency_crypto: params.currencyCrypto,
                instructions: params.instructions,
                limitLower: params.limitLower,
                limitUpper: params.limitUpper,
                status: params.advertStatus!,
                tradeType: params.tradeType,
                duration: params.duration,
                merchant_id: params.userId,
                rateFixed: params.rateFixed,
                rateFloat: params.rateFloat,
                isFloatRate: params.isFloatRate 
                },
            });
            return {
                ...ads,
                rateFixed: ads.rateFixed!,
                rateFloat: ads.rateFloat!,
                advertStatus: ads.status!,
            };
        } catch (error) {
            this.logger.error(error);
            throw GqlErr("Could not create advert: " + error);
        }
    }

    public async getOne(
        params: Advert_GetOneInput & UserInput
    ): Promise<Advert_GetResponse> {
        this.logger.info(this.getOne.name);
        const ad = await this.prisma.adverts.findFirst({
            where: {
                id: params.id,
            },
        });

        if (!ad) throw GqlErr("No advert found!");

         const merchant = await this.prisma.user.findFirst({
                where: {
                    id: ad.merchant_id,
                }
            })

            if (!merchant) {
                throw GqlErr("No merchant found");
            }

           

        return {
            id: ad.id,
            advertStatus: ad.status!,
            limitUpper: ad.limitUpper,
            limitLower: ad.limitLower,
            duration: ad.duration,
            instructions: ad.instructions,
            tradeType: ad.tradeType,
            currencyFiat: ad.currency_fiat,
            currencyCrypto: ad.currency_crypto,
            merchant_nickname: merchant!.merchant_nickname || "Vendy Broski",
            merchant_trade_count: merchant!.merchant_trade_count!,
            wallet_address: ad.wallet_address,
            merchant_id: ad.merchant_id,
            rateFixed: ad.rateFixed!,
            rateFloat: ad.rateFloat!,
            isFloatRate: ad.isFloatRate
            };
    }
    public async getMerchantAdverts(
        params: Advert_GetAllInput & UserInput
    ): Promise<Advert_GetResponse[]> {
        this.logger.info(this.getMerchantAdverts.name);
        const ads = await this.prisma.adverts.findMany({
            where: {
                merchant_id: params.userId,
                status: params.status
            },
        });

        return ads.map((val) => {
            return {
                ...val,
                 rateFixed: val.rateFixed!,
                rateFloat: val.rateFloat!,
                advertStatus: val.status!,
                
            }
            
        })
    }

    public async delete(
        params: Advert_DeleteInput & UserInput
    ): Promise<Advert_GetResponse> {
        this.logger.info(this.delete.name);
        const ads = await this.prisma.adverts.update({
            where: {
                merchant_id: params.userId,
                id: params.id,
            },
            data: { status: "CLOSE" },
        });
        return {
            ...ads,
              merchant_id: ads.merchant_id,
              rateFixed: ads.rateFixed!,
              rateFloat: ads.rateFloat!,
        };
    }
}
