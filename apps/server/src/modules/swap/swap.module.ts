import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { SwapService } from "./swap.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { SwapResolver } from "./swaputh.resolver";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [SwapService, SwapResolver, NotificationService],
    exports: [],
})
export class SwapModule {}
