import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { UtilitiesService } from "./utilities.service";
import { NotificationModule } from "../notification/notification.module";
import { UtilitiesResolver } from "./utilies.resolver";



@Module({
    imports: [CommonModule, NotificationModule],
    providers: [
        UtilitiesService,
        UtilitiesResolver,
    ],
})
export class UtilitiesModule {}
