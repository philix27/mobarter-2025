import { Args, Context, Mutation, Resolver } from "@nestjs/graphql";

import { AuthService } from "./auth.service";
import {
    Auth_CreateAccount,
    Auth_Login,
    Auth_Logout,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_sendEmailOtpResponse,
    Auth_verifyEmailOtp,
} from "./auth.dto";
import { UserDto } from "../user/user.dto";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "./gql.gaurd";

@Resolver((of: any) => UserDto)
export class AuthResolver {
    constructor(private readonly service: AuthService) {}

    @Mutation((returns) => String)
    async auth_createAccount(
        @Args("input") input: Auth_CreateAccount
    ): Promise<String> {
        const res = await this.service.createAccount(input);

        return res!;
    }

    @Mutation((returns) => String)
    async auth_login(@Args("input") input: Auth_Login) {
        const res = await this.service.login(input);

        return res!;
    }

    @Mutation((returns) => String)
    @UseGuards(GqlAuthGuard)
    async auth_logout(
        @Context() context: any,
        @Args("input") input: Auth_Logout
    ) {
        // const res = await this.service.logout(input);
        const user = context.req.user; // Extract user data
        return `User ID: ${user.userId}, Username: ${user.username}`;
    }

    @Mutation((returns) => String)
    async auth_verifyEmailOtp(@Args("input") input: Auth_verifyEmailOtp) {
        const res = await this.service.verifyEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => Auth_sendEmailOtpResponse)
    async auth_sendEmailOtp(
        @Args("input") input: Auth_sendEmailOtp
    ): Promise<Auth_sendEmailOtpResponse> {
        const res = await this.service.sendEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => String)
    async auth_resetPassword(@Args("input") input: Auth_ResetPassword) {
        const res = await this.service.resetPassword(input);

        return res!;
    }
}
