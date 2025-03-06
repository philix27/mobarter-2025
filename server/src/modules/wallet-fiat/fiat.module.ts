import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { WalletFiatResolver } from "./fiat.resolver";
import { WalletFiatService } from "./fiat.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [WalletFiatService, WalletFiatResolver, NotificationService],
    exports: [],
})
export class WalletModule {}
