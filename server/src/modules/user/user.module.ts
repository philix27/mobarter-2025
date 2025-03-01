import { Module } from "@nestjs/common";
import { CommonModule } from "../common";
import { PostsService } from "./user.service";
import { PostResolver } from "./user.resolver";

@Module({
    imports: [CommonModule],
    providers: [PostsService, PostResolver],
    exports: [],
})
export class PostModule {}
