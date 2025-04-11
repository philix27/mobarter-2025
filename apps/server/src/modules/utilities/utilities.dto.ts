import { Field,  Float,  InputType,   ObjectType, } from "@nestjs/graphql";

@InputType()
export class Utilities_PurchaseAirtimeInput {
    @Field({nullable: false})
    phoneNo: string;

    @Field((returns) => Float)
    amount: number;

    @Field()
    transaction_hash: string;

    @Field()
    network: string;
}

@ObjectType()
export class Utilities_PurchaseAirtimeResponse{
    @Field({nullable: false})
    message: string;
}