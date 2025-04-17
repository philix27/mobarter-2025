import { Field, Float, ID, InputType, Int, ObjectType,  } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

@ObjectType()
export class TransactionDto  {
     @Field((type) => ID)
    id: number;

    @Field((type) => Float)
    amount: number;
    
    @Field((type) => $Enums.TransactionsCategory)
    category: $Enums.TransactionsCategory;
    
    @Field((type) => $Enums.TransactionsMode)
    mode: $Enums.TransactionsMode
    
    @Field((type) => $Enums.TransactionStatus)
    status: $Enums.TransactionStatus;

    @Field()
    note: string;

}

@InputType()
export class Transaction_GetAllInput {
    @Field((type) => $Enums.TransactionStatus, { nullable: true })
    status?: $Enums.TransactionStatus;
}


@ObjectType()
export class Transaction_GetResponse  {
    @Field((type) => ID)
    id: number;

    @Field((type) => Float)
    amount: number;
    
    @Field((type) => $Enums.TransactionsCategory)
    category: $Enums.TransactionsCategory;
    
    @Field((type) => $Enums.TransactionsMode)
    mode: $Enums.TransactionsMode
    
    @Field((type) => $Enums.TransactionStatus)
    status: $Enums.TransactionStatus;

    @Field()
    note: string;

}

@InputType()
export class Transaction_GetOneInput {
    @Field((type) => Int)
    id: number;
}
