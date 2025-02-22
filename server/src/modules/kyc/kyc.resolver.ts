import { Args, Mutation, Resolver } from "@nestjs/graphql";

import { KycService } from "./kyc.service";
import {
    Auth_CreateAccount,
    Auth_Login,
    Auth_Logout,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./kyc.dto";
import { UserDto } from "../user/user.dto";

@Resolver((of: any) => UserDto)
export class KycResolver {
    constructor(private readonly service: KycService) {}

    @Mutation((returns) => String)
    async kyc_createAccount(
        @Args("input") input: Auth_CreateAccount
    ): Promise<String> {
        const res = await this.service.createAccount(input);

        return res!;
    }

    @Mutation((returns) => String)
    async kyc_login(@Args("input") input: Auth_Login) {
        const res = await this.service.login(input);

        return res!;
    }

    @Mutation((returns) => String)
    async kyc_logout(@Args("input") input: Auth_Logout) {
        const res = await this.service.logout(input);

        return res!;
    }

    @Mutation((returns) => String)
    async kyc_verifyEmailOtp(@Args("input") input: Auth_verifyEmailOtp) {
        const res = await this.service.verifyEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => String)
    async kyc_sendEmailOtp(@Args("input") input: Auth_sendEmailOtp) {
        const res = await this.service.sendEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => String)
    async kyc_resetPassword(@Args("input") input: Auth_ResetPassword) {
        const res = await this.service.resetPassword(input);

        return res!;
    }
}
