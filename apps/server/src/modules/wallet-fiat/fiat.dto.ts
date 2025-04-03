import { Field, InputType, ObjectType } from "@nestjs/graphql";

@InputType()
export class WalletFiat_GetAll {
    @Field({ nullable: false })
    userId: string;
}

@ObjectType()
export class WalletFiat {
    @Field({ nullable: false })
    accountNumber: string;

    @Field({ nullable: false })
    accountName: string;

    @Field({ nullable: false })
    bankName: string;

    @Field({ nullable: false })
    balance: number;
}
