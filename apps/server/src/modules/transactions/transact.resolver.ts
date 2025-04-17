import { Args, Context, Query, Resolver } from "@nestjs/graphql";
import { TransactionsService } from "./transact.service";
import {
    TransactionDto,
    Transaction_GetOneInput,
    Transaction_GetResponse,
} from "./transact.dto";
import { UseGuards } from "@nestjs/common";
import { VendorGuard } from "../common/guards";


@Resolver((of: any) => TransactionDto)
export class TransactionsResolver {
    constructor(private readonly service: TransactionsService) {}

    @Query((returns) => [Transaction_GetResponse])
    @UseGuards(VendorGuard)
    async adverts_getAll(
        @Context() context: { req: { userId: number } }
        // @Args("input") input: Advert_GetAllInput
    ): Promise<Transaction_GetResponse[]> {
        const res = await this.service.getAll({
            userId: context.req.userId,
        });

        return res!;
    }


    @Query((returns) => Transaction_GetResponse)
    @UseGuards(VendorGuard)
    async adverts_getOne(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Transaction_GetOneInput
    ): Promise<Transaction_GetResponse> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
