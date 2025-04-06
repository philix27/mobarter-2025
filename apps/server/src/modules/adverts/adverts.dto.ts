import { Field, ID, InputType, Int, ObjectType, PartialType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";
@InputType()
export class Advert_CreateInput {
    @Field({ nullable: false })
    merchant_id: number;
    
    @Field({ nullable: false })
    limitUpper: number;

    @Field({ nullable: false })
    limitLower: number;

    @Field({ nullable: true })
    rate?: string;

    @Field({ nullable: true })
    rateFloat?: number;
    
    @Field({ nullable: true })
    rateFixed?: number;

    @Field({ nullable: true })
    isFloatRate: boolean;

    @Field({ nullable: false })
    duration: string;

    @Field({ nullable: false })
    instructions: string;

    @Field({ nullable: false })
    fiatAmountPerCrypto: number;

    @Field({ nullable: false })
    wallet_address: string;

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
@ObjectType()
export class Advert_GetResponse extends PartialType(
    Advert_CreateInput,
    ObjectType
) {
    @Field((type) => ID)
    id: number;

    @Field({ nullable: false })
    merchant_nickname: string;

    @Field({ nullable: false })
    merchant_trade_count: number;

    @Field({ nullable: false })
    merchant_wallet: string;
}

@InputType()
export class Advert_GetOneInput {
    @Field((type) => Int)
    id: number;
}
@InputType()
export class Advert_GetAllMerchantAdsInput {
    @Field({ nullable: true })
    filter?: string;
}
