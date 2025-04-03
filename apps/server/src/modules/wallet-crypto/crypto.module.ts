import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { WalletCryptoResolver } from "./crypto.resolver";
import { WalletCryptoService } from "./crypto.service";
import { PrivyWalletService } from "./privy.service";
import { GqlAuthGuard } from "../auth/gql.guard";
import { HelperService } from "../helper/helper.service";

@Module({
    imports: [CommonModule],
    providers: [
        WalletCryptoService,
        WalletCryptoResolver,
        PrivyWalletService,
        GqlAuthGuard,
        HelperService,
    ],
    exports: [],
})
export class WalletCryptoModule {}
