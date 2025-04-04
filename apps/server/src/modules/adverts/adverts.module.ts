import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { AdvertsService } from "./adverts.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";
import { AdvertsResolver } from "./adverts.resolver";
import { HelperService } from "../helper/helper.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        AdvertsService,
        AdvertsResolver,
        HelperService,
        NotificationService,
    ],
    exports: [],
})
export class AdvertsModule {}
