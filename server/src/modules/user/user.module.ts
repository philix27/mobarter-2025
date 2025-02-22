import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { UserService } from "./user.service";
import { UserResolver } from "./user.resolver";


@Module({
    imports: [CommonModule],
    providers: [UserService, UserResolver],
    exports: [],
})
export class UserModule {}
