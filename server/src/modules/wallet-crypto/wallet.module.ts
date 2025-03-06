import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { WalletService } from "./wallet.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { WalletResolver } from "./wallet.resolver";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [WalletService, WalletResolver, NotificationService],
    exports: [],
})
export class WalletModule {}
