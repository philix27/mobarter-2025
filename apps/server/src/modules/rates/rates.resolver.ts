import { Context, Query, Resolver } from "@nestjs/graphql";
import {
    ExchangeRate_Response,
} from "./rates.dto";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "../common/guards";
import { ExchangeRateService } from "./rates.service";


@Resolver((of: any) => ExchangeRate_Response)
export class ExchangeRateResolver {
    constructor(private readonly service: ExchangeRateService) {}

    @Query((returns) => ExchangeRate_Response)
    @UseGuards(GqlAuthGuard)
    async fxRate_GetAll(
        @Context() context: { req: { userId: number } },
    ): Promise<ExchangeRate_Response> {
        const res = await this.service.getRates();
        return res!;
    }
}
