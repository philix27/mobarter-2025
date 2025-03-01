import { Args, Query, Resolver } from "@nestjs/graphql";
import { UserDto, UserGetInfo } from "./user.dto";
import { UserService } from "./user.service";

@Resolver((of: any) => UserDto)
export class UserResolver {
    constructor(private readonly service: UserService) {}

    @Query((returns) => UserDto)
    async user_getOne(@Args("input") input: UserGetInfo): Promise<UserDto> {
        const recipe = await this.service.getInfo({
            userId: 0,
            ...input,
        });

        return recipe;
    }
}
