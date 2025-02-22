import { Args, Mutation, Resolver } from "@nestjs/graphql";

import { BankAccountService } from "./bankAccount.service";
import {
    BankAccount_Create,
    Auth_Login,
    Auth_Logout,
    Auth_ResetPassword,
    Auth_sendEmailOtp,
    Auth_verifyEmailOtp,
} from "./bankAccount.dto";
import { UserDto } from "../user/user.dto";

@Resolver((of: any) => UserDto)
export class BankAccountResolver {
    constructor(private readonly service: BankAccountService) {}

    @Mutation((returns) => String)
    async bankAccount_createAccount(
        @Args("input") input: BankAccount_Create
    ): Promise<String> {
        const res = await this.service.createAccount(input);

        return res!;
    }

    @Mutation((returns) => String)
    async bankAccount_login(@Args("input") input: Auth_Login) {
        const res = await this.service.login(input);

        return res!;
    }

    @Mutation((returns) => String)
    async bankAccount_logout(@Args("input") input: Auth_Logout) {
        const res = await this.service.logout(input);

        return res!;
    }

    @Mutation((returns) => String)
    async bankAccount_verifyEmailOtp(
        @Args("input") input: Auth_verifyEmailOtp
    ) {
        const res = await this.service.verifyEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => String)
    async bankAccount_sendEmailOtp(@Args("input") input: Auth_sendEmailOtp) {
        const res = await this.service.sendEmailOtp(input);

        return res!;
    }

    @Mutation((returns) => String)
    async bankAccount_resetPassword(@Args("input") input: Auth_ResetPassword) {
        const res = await this.service.resetPassword(input);

        return res!;
    }
}
