import { Field, InputType, ObjectType, registerEnumType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

registerEnumType($Enums.Country, {
    name: "country",
});

@InputType()
export class Auth_CreateAccount {
    @Field({ nullable: false })
    email: string;

    @Field({ nullable: false })
    firstname: string;

    @Field({ nullable: false })
    lastname: string;

    @Field((type) => $Enums.Country)
    country: $Enums.Country;

    @Field({ nullable: false })
    password: string;
}

@InputType()
export class Auth_sendEmailOtp {
    @Field()
    email: string;
}
@ObjectType()
export class Auth_sendEmailOtpResponse {
    @Field()
    message: string;

    @Field()
    token: string;
}

@InputType()
export class Auth_verifyEmailOtp {
    @Field()
    email: string;

    @Field()
    token: string;
   
    @Field()
    otp: string;
}

@InputType()
export class Auth_ResetPassword {
    @Field()
    email: string;
}

@InputType()
export class Auth_Login {
    @Field()
    email: string;

    @Field()
    password: string;
}

@InputType()
export class Auth_Logout {
    @Field({ nullable: false })
    email: string;
}
