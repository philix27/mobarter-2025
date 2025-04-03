import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { NotificationModule } from "../notification/notification.module";
import { WalletFiatResolver } from "./fiat.resolver";
import { WalletFiatService } from "./fiat.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [WalletFiatService, WalletFiatResolver],
    exports: [],
})
export class WalletFiatModule {}
