import { Args,  Mutation,  Resolver } from "@nestjs/graphql";
import { TelegramService } from "./telegram.service";
import { Telegram_GenerateTokenResponse, Telegram_GenerateTokenInput} from "./telegram.dto";

@Resolver((of: any) => Telegram_GenerateTokenResponse)
export class TelegramResolver {
    constructor(private readonly service: TelegramService) {}

    @Mutation((returns) => Telegram_GenerateTokenResponse)
    async telegram_generateToken(
        @Args("input") input: Telegram_GenerateTokenInput,
    ): Promise<Telegram_GenerateTokenResponse> {
        const res = await this.service.generateToken(input);

        return res!;
    }
}
