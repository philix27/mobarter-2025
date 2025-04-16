import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { UtilitiesService } from "./utilities.service";
import { NotificationModule } from "../notification/notification.module";
import { UtilitiesResolver } from "./utilies.resolver";
import { ReloadlyTopUpService } from "../../lib/integrations/reloadly/reloadly.service";


@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        UtilitiesService,
        UtilitiesResolver,
        ReloadlyTopUpService
    ],
})
export class UtilitiesModule {}
