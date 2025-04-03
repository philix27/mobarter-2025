import { Field, InputType, ObjectType, PartialType } from "@nestjs/graphql";
import {
    Auth_sendEmailOtpInput,
    Auth_sendEmailOtpResponse,
    Auth_verifyEmailOtpInput,
    Auth_verifyOtpResponse,
} from "../auth/auth.dto";

@ObjectType()
export class Kyc_SendEmailResponse extends PartialType(
    Auth_sendEmailOtpResponse,
    ObjectType
) {}

@ObjectType()
export class Kyc_VerifyEmailResponse extends PartialType(
    Auth_verifyOtpResponse,
    ObjectType
) {}

@InputType()
export class Kyc_SendEmailOtpInput extends PartialType(
    Auth_sendEmailOtpInput,
    InputType
) {}

@InputType()
export class Kyc_VerifyEmailOtpInput extends PartialType(
    Auth_verifyEmailOtpInput,
    InputType
) {}

@InputType()
export class Kyc_SendPhoneOtpInput {
    @Field()
    phone: string;
}
@InputType()
export class Kyc_VerifyPhoneOtpInput {
    @Field()
    phone: string;

    @Field()
    otp: string;

    @Field()
    token: string;
}

@InputType()
export class Kyc_AddBvnInput {
    @Field()
    bvn: string;
}

@ObjectType()
export class Kyc_AddBvnResponse {
    @Field()
    message: string;
}

@InputType()
export class Kyc_AddNinInput {
    @Field()
    nin: string;
}

@ObjectType()
export class Kyc_AddNinResponse extends PartialType(
    Kyc_AddBvnResponse,
    ObjectType
) {}
@InputType()
export class Kyc_CreateTransactionPinInput {
    @Field()
    nin: string;
}
