import { Args, Query, Resolver } from "@nestjs/graphql";
import { PostDto, PostGetOneInput } from "./prices.dto";
import { PricesService } from "./prices.service";

@Resolver((of: any) => PostDto)
export class PricesResolver {
    constructor(private readonly service: PricesService) {}

    @Query((returns) => PostDto)
    async getMarket(@Args("input") input: PostGetOneInput): Promise<[]> {
        const result = await this.service.getMarket({
            currency: "NGN",
        });

        return result;
    }
}
