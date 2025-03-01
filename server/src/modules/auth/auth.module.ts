import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { AuthService } from "./auth.service";
import { NotificationModule } from "../notification/notification.module";
import { NotificationService } from "../notification/notification.service";

@Module({
    imports: [CommonModule, NotificationModule],
    providers: [AuthService, NotificationService],
    exports: [],
})
export class AuthModule {}
