import { Context, Mutation, Query, Resolver } from "@nestjs/graphql";
import { WalletCryptoService } from "./crypto.service";
import { WalletCrypto } from "./crypto.dto";

@Resolver((of: any) => WalletCrypto)
export class WalletCryptoResolver {
    constructor(private readonly service: WalletCryptoService) {}

    @Query((returns) => WalletCrypto)
    async walletCrypto_getAll(): Promise<WalletCrypto[]> {
        const result = await this.service.getWallets({
            userId: 0,
        });

        return result;
    }

    @Mutation((returns) => WalletCrypto)
    async walletCrypto_create(
        @Context() context: any
    ): Promise<WalletCrypto[]> {
        const user = context.req.user;
        console.log("Besties", user);
        const res = await this.service.createWalletsForNewUser({
            userId: user.id,
        });
        return res;
    }
}
