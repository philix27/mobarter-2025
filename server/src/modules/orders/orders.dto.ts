import { Field, ID, InputType, ObjectType, PartialType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";
@InputType()
export class Order_CreateInput {
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
export class OrderDto extends Order_CreateInput {
    @Field((type) => ID)
    id: number;
}

@ObjectType()
export class Order_AdvertResponse extends PartialType(
    Order_CreateInput,
    ObjectType
) {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Order_GetAllInput {
    @Field({ nullable: true })
    filter?: string;
}

@InputType()
export class Order_GetOneInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Order_MoveCryptoToEscrowInput {
    @Field((type) => ID)
    amountCrypto: number;

    @Field((type) => $Enums.CurrencyCrypto)
    currencyCrypto: $Enums.CurrencyCrypto;
}

@InputType()
export class Order_FaitSentInput {
    @Field((type) => ID)
    amountFiat: number;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;
}

@InputType()
export class Order_FaitReceivedInput {
    @Field((type) => ID)
    amountFiat: number;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;
}

@InputType()
export class Order_ReleaseCryptoFromEscrowInput {}

@InputType()
export class Order_AppealInput {
    @Field((type) => ID)
    id: number;

    @Field({ nullable: false })
    reason: string;
}

@InputType()
export class Order_CancelInput {
    @Field((type) => ID)
    id: number;

    @Field({ nullable: false })
    reason: string;
}
