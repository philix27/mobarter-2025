import { Args, Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { OrderService } from "./orders.service";
import {
    Order_AdvertResponse,
    Order_AppealInput,
    Order_CancelInput,
    Order_CreateInput,
    Order_FaitReceivedInput,
    Order_FaitSentInput,
    Order_GetAllInput,
    Order_GetOneInput,
    Order_MoveCryptoToEscrowInput,
    Order_ReleaseCryptoFromEscrowInput,
    OrderDto,
} from "./orders.dto";

@Resolver((of: any) => OrderDto)
export class OrdersResolver {
    constructor(private readonly service: OrderService) {}

    @Mutation((returns) => Order_AdvertResponse)
    async orders_Create(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_CreateInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.create({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Query((returns) => [Order_AdvertResponse])
    async orders_GetAll(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_GetAllInput
    ): Promise<Order_AdvertResponse[]> {
        const res = await this.service.getAll({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Query((returns) => Order_AdvertResponse)
    async orders_GetOne(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_GetOneInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
        });
        return res!;
    }

    @Mutation((returns) => Order_AdvertResponse)
    async orders_MoveCryptoToEscrow(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_MoveCryptoToEscrowInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.getOne({
            ...input,
            userId: context.req.userId,
            id: 0,
        });

        return res!;
    }
    @Mutation((returns) => Order_AdvertResponse)
    async orders_FaitSent(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_FaitSentInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.faitSent({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Order_AdvertResponse)
    async orders_FaitReceived(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_FaitReceivedInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.faitReceived({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
    
    @Mutation((returns) => Order_AdvertResponse)
    async orders_ReleaseCryptoFromEscrow(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_ReleaseCryptoFromEscrowInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.releaseCryptoFromEscrow({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Order_AdvertResponse)
    async orders_Appeal(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_AppealInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.appeal({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Order_AdvertResponse)
    async orders_Cancel(
        @Context() context: { req: { userId: number } },
        @Args("input") input: Order_CancelInput
    ): Promise<Order_AdvertResponse> {
        const res = await this.service.cancel({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
