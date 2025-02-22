import { Field, InputType } from "@nestjs/graphql";

@InputType()
export class Auth_CreateAccount {
    @Field({ nullable: false })
    email: string;
}

@InputType()
export class Auth_sendEmailOtp {
    @Field()
    email: string;
}

@InputType()
export class Auth_verifyEmailOtp {
    @Field()
    email: string;

    @Field()
    token: string;
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
