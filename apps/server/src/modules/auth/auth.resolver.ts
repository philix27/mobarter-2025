import { Args, Context, Mutation, Resolver } from "@nestjs/graphql";
import { AuthService } from "./auth.service";
import {
    Auth_CreateAccountInput,
    Auth_CreateAccountResponse,
    Auth_LoginInput,
    Auth_LoginMinipayInput,
    Auth_LoginMinipayResponse,
    Auth_LoginResponse,
    Auth_LogoutInput,
    Auth_MinipayCreateAccountInput,
    Auth_ResetPasswordInput,
    Auth_ResetPasswordResponse,
    Auth_sendEmailOtpInput,
    Auth_sendEmailOtpResponse,
    Auth_verifyEmailOtpInput,
    Auth_verifyOtpResponse,
} from "./auth.dto";
import { UserDto } from "../user/user.dto";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "../common/guards";

@Resolver((of: any) => UserDto)
export class AuthResolver {
    constructor(
        private readonly service: AuthService,
    ) {}

    @Mutation((returns) => Auth_sendEmailOtpResponse)
    async auth_sendEmailOtp(
        @Args("input") input: Auth_sendEmailOtpInput,
    ): Promise<Auth_sendEmailOtpResponse> {
        const res = await this.service.sendEmailOtp(input);
        return res!;
    }

    @Mutation((returns) => Auth_verifyOtpResponse)
    async auth_verifyEmailOtp(
        @Args("input") input: Auth_verifyEmailOtpInput,
    ): Promise<Auth_verifyOtpResponse> {
        const res = await this.service.verifyEmailOtp(input);
        return res!;
    }

    @Mutation((returns) => Auth_CreateAccountResponse)
    async auth_createAccount(
        @Args("input") input: Auth_CreateAccountInput,
    ): Promise<Auth_CreateAccountResponse> {
        const res = await this.service.createAccount(input);
        return res;
    }

    @Mutation((returns) => Auth_LoginResponse)
    async auth_login(
        @Args("input") input: Auth_LoginInput,
    ): Promise<Auth_LoginResponse> {
        const res = await this.service.login(input);

        return res!;
    }
    @Mutation((returns) => Auth_LoginMinipayResponse)
    async auth_minipayLogin(
        @Args("input") input: Auth_LoginMinipayInput,
    ): Promise<Auth_LoginMinipayResponse> {
        const res = await this.service.minipayLogin(input);
        return res!;
    }

    @Mutation((returns) => Auth_LoginMinipayResponse)
    async auth_minipayCreateAccount(
        @Args("input") input: Auth_MinipayCreateAccountInput,
    ): Promise<Auth_LoginMinipayResponse> {
        const res = await this.service.minipayCreateAccount(input);
        return res!;
    }

    @Mutation((returns) => String)
    @UseGuards(GqlAuthGuard)
    async auth_logout(
        @Context() context: any,
        @Args("input") input: Auth_LogoutInput,
    ) {
        // const res = await this.service.logout(input);
        const user = context.req.user; // Extract user data
        return `User ID: ${user.userId}, Username: ${user.username}`;
    }

    @Mutation((returns) => Auth_ResetPasswordResponse)
    async auth_resetPassword(
        @Args("input") input: Auth_ResetPasswordInput,
    ): Promise<Auth_ResetPasswordResponse> {
        const res = await this.service.resetPassword(input);

        return res!;
    }
   
}
