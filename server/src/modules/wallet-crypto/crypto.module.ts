import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { WalletCryptoResolver } from "./crypto.resolver";
import { WalletCryptoService } from "./crypto.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [WalletCryptoService, WalletCryptoResolver, NotificationService],
    exports: [],
})
export class WalletCryptoModule {}
