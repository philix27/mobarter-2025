import { Field, ID, InputType, ObjectType, PartialType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";
@InputType()
export class Advert_CreateInput {
    @Field({ nullable: false })
    limitUpper: number;

    @Field({ nullable: false })
    limitLower: number;

    @Field({ nullable: false })
    rate: string;

    @Field({ nullable: false })
    duration: string;

    @Field({ nullable: false })
    instructions: string;

    @Field((type) => $Enums.TradeType)
    tradeType: $Enums.TradeType;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;

    @Field((type) => $Enums.CurrencyCrypto)
    currencyCrypto: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.AdvertStatus)
    advertStatus: $Enums.AdvertStatus;
}

@ObjectType()
export class AdvertDto extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_UpdateStatusInput extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_UpdateInput extends Advert_CreateInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_DeleteInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_GetAllInput {
    @Field({ nullable: true })
    filter?: string;
}

@ObjectType()
export class Advert_AdvertResponse extends PartialType(
    Advert_CreateInput,
    ObjectType
) {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Advert_GetOneInput {
    @Field((type) => ID)
    id: number;
}
@InputType()
export class Advert_GetAllMerchantAdsInput {
    @Field({ nullable: true })
    filter?: string;
}
