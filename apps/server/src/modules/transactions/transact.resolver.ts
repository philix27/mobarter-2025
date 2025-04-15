import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { TransactionsService } from "./transact.service";
import {
    AdvertDto,
    Advert_CreateInput,
    Advert_GetOneInput,
    Advert_GetResponse,
} from "./transact.dto";
import { UseGuards } from "@nestjs/common";
import { VendorGuard } from "../common/guards";


@Resolver((of: any) => AdvertDto)
export class TransactionsResolver {
    constructor(private readonly service: TransactionsService) {}

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
