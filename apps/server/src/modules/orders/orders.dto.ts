import {
    Field,
    ID,
    InputType,
    Int,
    ObjectType,
    PartialType,
} from "@nestjs/graphql";
import { $Enums } from "@prisma/client";
@InputType()
export class Order_CreateInput {
    @Field({ nullable: false })
    limitUpper: number;

    @Field({ nullable: false })
    limitLower: number;

    @Field({ nullable: false })
    amountCrypto: number;

    @Field({ nullable: false })
    amountFiat: number;

    @Field({ nullable: false })
    duration: string;

    @Field({ nullable: false })
    timeCompleted: string;

    @Field((type) => $Enums.OrderActions)
    userAction: $Enums.OrderActions;

    @Field((type) => $Enums.OrderActions)
    merchantAction: $Enums.OrderActions;

    @Field((type) => $Enums.TradeType)
    tradeType: $Enums.TradeType;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;

    @Field((type) => $Enums.CurrencyCrypto)
    currencyCrypto: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.OrderStatus)
    status: $Enums.OrderStatus;

  
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

     @Field((type) => $Enums.TradeType)
     tradeType?: $Enums.TradeType;
    
     @Field((type) => $Enums.CurrencyFiat)
    currencyFiat?: $Enums.CurrencyFiat;

    @Field((type) => $Enums.CurrencyCrypto)
    currencyCrypto?: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.OrderStatus)
    status?: $Enums.OrderStatus;
}

@InputType()
export class Order_GetOneInput {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Order_MoveCryptoToEscrowInput {
    @Field((type) => ID)
    id: number;

    @Field((type) => Int)
    amountCrypto: number;

    @Field((type) => $Enums.CurrencyCrypto)
    currencyCrypto: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.OrderActions)
    action: $Enums.OrderActions;
}

@InputType()
export class Order_FaitSentInput {
    @Field((type) => ID)
    id: number;

    @Field((type) => Int)
    amountFiat: number;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;
}

@InputType()
export class Order_FaitReceivedInput {
    @Field((type) => ID)
    id: number;

    @Field((type) => Int)
    amountFiat: number;

    @Field((type) => $Enums.CurrencyFiat)
    currencyFiat: $Enums.CurrencyFiat;

    // @Field((type) => $Enums)
    // sender: $Enums.OrderParticipant;
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
