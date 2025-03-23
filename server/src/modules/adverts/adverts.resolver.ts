import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { AdvertsService } from "./adverts.service";
import {
    AdvertDto,
    Advert_CreateInput,
    Advert_UpdateInput,
    Advert_DeleteInput,
    Advert_GetAllInput,
    Advert_GetOneInput,
    Advert_AdvertResponse,
} from "./adverts.dto";
import { UseGuards } from "@nestjs/common";
import { VendorGuard } from "../auth/vendor.guard";

@Resolver((of: any) => AdvertDto)
export class AdvertsResolver {
    constructor(private readonly service: AdvertsService) {}

    @Mutation((returns) => Advert_AdvertResponse)
    @UseGuards(VendorGuard)
    async adverts_create(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_CreateInput
    ): Promise<Advert_AdvertResponse> {
        const res = await this.service.create({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Mutation((returns) => Advert_AdvertResponse)
    @UseGuards(VendorGuard)
    async adverts_update(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_UpdateInput
    ): Promise<Advert_AdvertResponse> {
        const res = await this.service.update({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Advert_AdvertResponse)
    @UseGuards(VendorGuard)
    async adverts_delete(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_DeleteInput
    ): Promise<Advert_AdvertResponse> {
        const res = await this.service.delete({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => [Advert_AdvertResponse])
    @UseGuards(VendorGuard)
    async adverts_getAll(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_GetAllInput
    ): Promise<Advert_AdvertResponse[]> {
        const res = await this.service.getAll({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => Advert_AdvertResponse)
    @UseGuards(VendorGuard)
    async adverts_getOne(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Advert_GetOneInput
    ): Promise<Advert_AdvertResponse> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
