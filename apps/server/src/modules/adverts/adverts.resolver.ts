import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { AdvertsService } from "./adverts.service";
import {
    AdvertDto,
    Advert_CreateInput,
    Advert_UpdateInput,
    Advert_DeleteInput,
    Advert_GetAllInput,
    Advert_GetOneInput,
    Advert_GetResponse,
} from "./adverts.dto";
import { UseGuards } from "@nestjs/common";
import { VendorGuard } from "../common/guards";


@Resolver((of: any) => AdvertDto)
export class AdvertsResolver {
    constructor(private readonly service: AdvertsService) {}

    @Mutation((returns) => Advert_GetResponse)
    @UseGuards(VendorGuard)
    async adverts_create(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_CreateInput
    ): Promise<Advert_GetResponse> {
        const res = await this.service.create({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Mutation((returns) => Advert_GetResponse)
    @UseGuards(VendorGuard)
    async adverts_update(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_UpdateInput
    ): Promise<Advert_GetResponse> {
        const res = await this.service.update({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Advert_GetResponse)
    @UseGuards(VendorGuard)
    async adverts_delete(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_DeleteInput
    ): Promise<Advert_GetResponse> {
        const res = await this.service.delete({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => [Advert_GetResponse])
    @UseGuards(VendorGuard)
    async adverts_getAll(
        @Context() context: { req: { userId: number } }
        // @Args("input") input: Advert_GetAllInput
    ): Promise<Advert_GetResponse[]> {
        const res = await this.service.getAll({
            userId: context.req.userId,
        });

        return res!;
    }
    @Query((returns) => [Advert_GetResponse])
    @UseGuards(VendorGuard)
    async adverts_getMerchantAdverts(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_GetAllInput
    ): Promise<Advert_GetResponse[]> {
        const res = await this.service.getMerchantAdverts({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => Advert_GetResponse)
    @UseGuards(VendorGuard)
    async adverts_getOne(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_GetOneInput
    ): Promise<Advert_GetResponse> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
