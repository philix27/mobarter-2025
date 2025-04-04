import {
    Field,
    ID,
    InputType,
    Int,
    ObjectType,
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
export class ExchangeRate_Response {
    @Field((type) => Int)
    NGN: number;
    
    @Field((type) => Int)
    USD: number;
    
    @Field((type) => Int)
    EUR: number;
    
    @Field((type) => Int)
    GHS: number;

    @Field((type) => Int)
    KES: number;
}
