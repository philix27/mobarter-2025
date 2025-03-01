import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { NotificationService } from "./notification.service";

@Module({
    imports: [CommonModule],
    providers: [NotificationService],
    exports: [],
})
export class NotificationModule {}
