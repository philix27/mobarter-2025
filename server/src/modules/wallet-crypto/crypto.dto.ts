import { Field, ObjectType } from "@nestjs/graphql";

@ObjectType()
export class WalletCrypto {
    @Field({ nullable: false })
    accountNumber: string;

    @Field({ nullable: false })
    accountName: string;

    @Field({ nullable: false })
    bankName: string;

    @Field({ nullable: false })
    balance: number;
}
