import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { KycService } from "./kyc.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { KycResolver } from "./kyc.resolver";
import { GqlAuthGuard } from "../common/guards";
import { HelperService } from "../helper/helper.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        KycService,
        KycResolver,
        NotificationService,
        GqlAuthGuard,
        HelperService,
    ],
    exports: [],
})
export class KycModule {}
