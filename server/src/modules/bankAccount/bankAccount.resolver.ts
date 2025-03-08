import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";

import { BankAccountService } from "./bankAccount.service";
import {
    BankAccount_CreateInput,
    BankAccount_DeleteInput,
    BankAccount_DeleteResponse,
    BankAccount_Response,
} from "./bankAccount.dto";
import { GqlAuthGuard } from "../auth/gql.guard";
import { UseGuards } from "@nestjs/common";

@Resolver((of: any) => BankAccount_Response)
export class BankAccountResolver {
    constructor(private readonly service: BankAccountService) {}

    @Mutation((returns) => BankAccount_Response)
    async bankAccount_create(
        @Context() context: any,
        @Args("input") input: BankAccount_CreateInput
    ): Promise<BankAccount_Response> {
        const user = context.req.user;
        const res = await this.service.create({
            userId: user.id,
            ...input,
        });

        return res!;
    }

    @Mutation((returns) => BankAccount_DeleteResponse)
    async bankAccount_delete(
        @Context() context: any,
        @Args("input") input: BankAccount_DeleteInput
    ) {
        const user = context.req.user;
        const res = await this.service.delete({
            userId: user.id,
            ...input,
        });

        return res!;
    }

    @UseGuards(GqlAuthGuard)
    @Query((returns) => BankAccount_Response)
    async bankAccount_getAll(
        @Context() context: any
    ): Promise<BankAccount_Response[]> {
        const { userId } = context.req;
        console.log("In bank resolver: ", userId);
        const res = await this.service.getAll({ userId });

        return res;
    }
}
