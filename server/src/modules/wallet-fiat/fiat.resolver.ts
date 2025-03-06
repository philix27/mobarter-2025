import { Query, Resolver } from "@nestjs/graphql";
import { WalletFiatService } from "./fiat.service";
import { WalletFiat } from "./fiat.dto";

@Resolver((of: any) => WalletFiat)
export class WalletFiatResolver {
    constructor(private readonly service: WalletFiatService) {}

    @Query((returns) => WalletFiat)
    async walletFiat_getAll(): Promise<WalletFiat[]> {
        const result = await this.service.getWallets({
            userId: 0,
        });

        return result;
    }
}
