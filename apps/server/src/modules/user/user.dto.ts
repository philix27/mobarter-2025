import { Field, InputType } from "@nestjs/graphql";
import { IsOptional } from "class-validator";
import { ID, ObjectType } from "@nestjs/graphql";
import { registerEnumType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

registerEnumType($Enums.Country, {
    name: "Country",
});

@InputType()
export class UserCreate {
    @Field({ nullable: false })
    firstname: string;

    @Field({ nullable: false })
    lastname: string;

    @Field({ nullable: true })
    middlename?: string;

    @Field({ nullable: true })
    email: string;

    @Field((type) => $Enums.Country)
    country: $Enums.Country;

    @Field()
    password: string;
}

@InputType()
export class UserGetInfo {
    @Field({ nullable: false })
    @IsOptional()
    userId?: number;
}

@InputType()
export class UserResetPassword {
    @Field()
    newPassword: string;

    @Field()
    confirmNewPassword: string;

    @Field()
    email?: string;
}

@ObjectType()
export class UserDto {
    @Field((type) => ID)
    id: number;

    @Field({ nullable: false })
    firstname: string;

    @Field({ nullable: false })
    lastname: string;

    @Field({ nullable: true })
    middlename?: string;

    @Field()
    email: string;

    @Field()
    password: string;

    @Field((type) => $Enums.Country)
    country: $Enums.Country;
}
