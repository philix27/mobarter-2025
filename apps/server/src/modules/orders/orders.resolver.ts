import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { OrderService } from "./orders.service";
import {
    Order_Response,
    Order_AppealInput,
    Order_CancelInput,
    Order_GetOneInput,
    Order_MoveCryptoToEscrowInput,
    Order_CreteSellInput,
    Order_CreteSellResponse,
    Order_CreteBuyResponse,
    Order_CreteBuyInput,
    Order_GetAllInput,
} from "./orders.dto";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "../common/guards";

@Resolver((of: any) => Order_Response)
export class OrdersResolver {
    constructor(private readonly service: OrderService) {}

    @Mutation((returns) => Order_CreteSellResponse)
    @UseGuards(GqlAuthGuard)
    async orders_CreateSell(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_CreteSellInput
    ): Promise<Order_CreteSellResponse> {
        const res = await this.service.createSell({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
    @Mutation((returns) => Order_CreteBuyResponse)
    @UseGuards(GqlAuthGuard)
    async orders_CreateBuy(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_CreteBuyInput
    ): Promise<Order_CreteBuyResponse> {
        const res = await this.service.createBuy({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => [Order_Response])
    @UseGuards(GqlAuthGuard)
    async orders_GetAll(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_GetAllInput
    ): Promise<Order_Response[]> {
        const res = await this.service.getAllForCustomer({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Query((returns) => [Order_Response])
    @UseGuards(GqlAuthGuard)
    async orders_GetAllAsMerchant(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_GetAllInput
    ): Promise<Order_Response[]> {
        const res = await this.service.getAllForMerchant({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Query((returns) => Order_Response)
    @UseGuards(GqlAuthGuard)
    async orders_GetOne(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_GetOneInput
    ): Promise<Order_Response> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Mutation((returns) => Order_Response)
    @UseGuards(GqlAuthGuard)
    async orders_MoveCryptoToEscrow(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_MoveCryptoToEscrowInput
    ): Promise<Order_Response> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
            id: 0,
        });

        return res!;
    }

    @Mutation((returns) => Order_Response)
    @UseGuards(GqlAuthGuard)
    async orders_Appeal(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_AppealInput
    ): Promise<Order_Response> {
        const res = await this.service.appeal({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Order_Response)
    @UseGuards(GqlAuthGuard)
    async orders_Cancel(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_CancelInput
    ): Promise<Order_Response> {
        const res = await this.service.cancel({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    // @Mutation((returns) => Order_Response)
    // async orders_FaitSent(
    //     @Context() context: { req: { userId: number } },
    //     @Args("input") input: Order_FaitSentInput
    // ): Promise<Order_Response> {
    //     const res = await this.service.faitSent({
    //         ...input,
    //         userId: context.req.userId,
    //     });

    //     return res!;
    // }

    // @Mutation((returns) => Order_Response)
    // async orders_FaitReceived(
    //     @Context() context: { req: { userId: number } },
    //     @Args("input") input: Order_FaitReceivedInput
    // ): Promise<Order_Response> {
    //     const res = await this.service.faitReceived({
    //         ...input,
    //         userId: context.req.userId,
    //     });

    //     return res!;
    // }
    
    // @Mutation((returns) => Order_Response)
    // async orders_ReleaseCryptoFromEscrow(
    //     @Context() context: { req: { userId: number } },
    //     @Args("input") input: Order_ReleaseCryptoFromEscrowInput
    // ): Promise<Order_Response> {
    //     const res = await this.service.releaseCryptoFromEscrow({
    //         ...input,
    //         userId: context.req.userId,
    //     });

    //     return res!;
    // }

    
}
