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
class Order_Dto {
    @Field({ nullable: false })
    merchant_id: number;
    
    @Field((type) => $Enums.BankName)
    bank_name: $Enums.BankName
    
    @Field({ nullable: false })
    bank_account_name: string;
    
    @Field({ nullable: false })
    bank_account_no: string;
    
    @Field({ nullable: false })
    amount_crypto: number;

    @Field({ nullable: false })
    amount_fiat: number;

    @Field({ nullable: false })
    estimated_duration: string;
                
    @Field({ nullable: false })
    wallet_merchant: string;

    @Field({ nullable: false })
    wallet_customer: string;

    @Field((type) => $Enums.OrderActions, {nullable: true})
    action_user?: $Enums.OrderActions;

    @Field((type) => $Enums.OrderActions, {nullable: true})
    action_merchant?: $Enums.OrderActions;

    @Field((type) => $Enums.TradeType)
    trade_type: $Enums.TradeType;

    @Field((type) => $Enums.CurrencyFiat)
    currency_fiat: $Enums.CurrencyFiat;

    @Field((type) => $Enums.CurrencyCrypto)
    currency_crypto: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.OrderStatus)
    status: $Enums.OrderStatus;

  
}


@ObjectType()
export class Order_Response extends PartialType(
    Order_Dto,
    ObjectType
) {
    @Field((type) => ID)
    id: number;
}

@InputType()
export class Order_GetAllInput {
    @Field((type) => $Enums.TradeType, {nullable: true})
    trade_type?: $Enums.TradeType;

    @Field((type) => $Enums.CurrencyFiat, {nullable: true})
    currency_fiat?: $Enums.CurrencyFiat;

    @Field((type) => $Enums.CurrencyCrypto, {nullable: true})
    currency_crypto?: $Enums.CurrencyCrypto;

    @Field((type) => $Enums.OrderStatus, {nullable: true})
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

@InputType()
export class Order_CreteSellInput extends Order_Dto {
 
}
@ObjectType()
export class Order_CreteSellResponse extends PartialType(
    Order_CreteSellInput,
    ObjectType
) {
   @Field((type) => ID)
    id: number;
}

@InputType()
export class Order_CreteBuyInput extends Order_Dto {
   
}


@ObjectType()
export class Order_CreteBuyResponse extends PartialType(
    Order_CreteBuyInput,
    ObjectType
) {
   @Field((type) => ID)
    id: number;
}