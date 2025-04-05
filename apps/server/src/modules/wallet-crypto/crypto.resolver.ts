import { Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { WalletCryptoService } from "./crypto.service";
import { WalletCryptoResponse } from "./crypto.dto";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "../common/guards";

@Resolver((of: any) => WalletCryptoResponse)
export class WalletCryptoResolver {
    constructor(private readonly service: WalletCryptoService) {}

    @Query((returns) => [WalletCryptoResponse])
    @UseGuards(GqlAuthGuard)
    async walletCrypto_getAll(
        @Context() context: any
    ): Promise<WalletCryptoResponse[]> {
        const user = context.req;
        const result = await this.service.getWallets({
            userId: parseInt(user.userId),
        });

        return result;
    }

    @Mutation((returns) => [WalletCryptoResponse])
    @UseGuards(GqlAuthGuard)
    async walletCrypto_create(
        @Context() context: { req: { userId: string } }
    ): Promise<WalletCryptoResponse[]> {
        const user = context.req;
        const res = await this.service.createWalletsForNewUser({
            userId: parseInt(user.userId),
        });
        return res.map((val) => {
            return {
                address: val.address,
                chainType: val.chainType,
                minipay: val.minipay!,
                wallet_id: val.wallet_id,
                id: val.id,
            };
        });
    }
}
