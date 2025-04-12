import { Args,  Context,  Mutation,  Resolver } from "@nestjs/graphql";
import { UtilitiesService } from "./utilities.service";
import { Utilities_PurchaseAirtimeResponse, Utilities_PurchaseAirtimeInput} from "./utilities.dto";
import { GqlAuthGuard } from "../common/guards";
import { UseGuards } from "@nestjs/common";

@Resolver((of: any) => Utilities_PurchaseAirtimeResponse)
export class UtilitiesResolver {
    constructor(private readonly service: UtilitiesService) {}

    @Mutation((returns) => Utilities_PurchaseAirtimeResponse)
    @UseGuards(GqlAuthGuard)
    async utility_purchaseAirtime(
        @Args("input") input: Utilities_PurchaseAirtimeInput,
        @Context() context: { req: { userId: number } },
    ): Promise<Utilities_PurchaseAirtimeResponse> {
        const res = await this.service.purchaseAirtime({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
