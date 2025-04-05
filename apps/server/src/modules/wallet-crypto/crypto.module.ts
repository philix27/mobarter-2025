import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { WalletCryptoResolver } from "./crypto.resolver";
import { WalletCryptoService } from "./crypto.service";
import { PrivyWalletService } from "./privy.service";


@Module({
    imports: [CommonModule],
    providers: [
        WalletCryptoService,
        WalletCryptoResolver,
        PrivyWalletService,
    ],
    exports: [],
})
export class WalletCryptoModule {}
