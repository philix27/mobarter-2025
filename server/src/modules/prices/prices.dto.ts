import { Field, InputType } from "@nestjs/graphql";
import { IsOptional, MaxLength } from "class-validator";
import { ID, ObjectType } from "@nestjs/graphql";
import { registerEnumType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

type ICurrency = "NGN" | "USDT" | "USD" | "CUSD" | "BTC";

registerEnumType($Enums.CurrencyName, {
    name: "currency",
});

@InputType()
export class PostInput {
    @Field((type) => $Enums.CurrencyName)
    @MaxLength(30)
    currency: ICurrency;
}

@InputType()
export class PostGetManyInput {
    @Field((type) => $Enums.CurrencyName)
    @MaxLength(30)
    currency: ICurrency;
}

@InputType()
export class PostGetOneInput {
    @Field((type) => $Enums.CurrencyName)
    currency: ICurrency;

    @Field({ nullable: false })
    @IsOptional()
    postId?: number;
}

@ObjectType()
export class PostDto {
    @Field((type) => ID)
    id: number;

    @Field()
    buyPrice?: number;

    @Field()
    sellPrice?: number;

    @Field()
    time?: string;

    @Field()
    from?: string;

    @Field()
    currency?: string;
}
