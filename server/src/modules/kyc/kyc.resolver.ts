import { Args, Context, Mutation, Resolver } from "@nestjs/graphql";

import { KycService } from "./kyc.service";
import {
    Kyc_AddBvnInput,
    Kyc_AddBvnResponse,
    Kyc_AddNinInput,
    Kyc_AddNinResponse,
    Kyc_SendEmailOtpInput,
    Kyc_SendEmailResponse,
    Kyc_VerifyEmailOtpInput,
    Kyc_VerifyEmailResponse,
} from "./kyc.dto";
import { UserDto } from "../user/user.dto";
import { IContextUser } from "../../lib";
import { UseGuards } from "@nestjs/common";
import { GqlAuthGuard } from "../common/guards";

@Resolver((of: any) => UserDto)
export class KycResolver {
    constructor(private readonly service: KycService) {}

    @Mutation((returns) => Kyc_AddBvnResponse)
    @UseGuards(GqlAuthGuard)
    async kyc_addBvn(
        @Context() context: IContextUser,
        @Args("input") input: Kyc_AddBvnInput
    ): Promise<Kyc_AddBvnResponse> {
        const res = await this.service.addBvn({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Kyc_AddNinResponse)
    @UseGuards(GqlAuthGuard)
    async kyc_addNin(
        @Context() context: IContextUser,
        @Args("input") input: Kyc_AddNinInput
    ): Promise<Kyc_AddNinResponse> {
        const res = await this.service.addNin({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Kyc_VerifyEmailResponse)
    @UseGuards(GqlAuthGuard)
    async kyc_verifyEmailOtp(
        @Context() context: IContextUser,
        @Args("input") input: Kyc_VerifyEmailOtpInput
    ): Promise<Kyc_VerifyEmailResponse> {
        const res = await this.service.verifyEmailOtp({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }

    @Mutation((returns) => Kyc_SendEmailResponse)
    @UseGuards(GqlAuthGuard)
    async kyc_sendEmailOtp(
        @Context() context: IContextUser,
        @Args("input") input: Kyc_SendEmailOtpInput
    ): Promise<Kyc_SendEmailResponse> {
        const res = await this.service.sendEmailOtp({
            ...input,
            userId: context.req.userId,
        });

        return res!;
    }
}
