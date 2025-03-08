import { Field, InputType, ObjectType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

@InputType()
export class BankAccount_CreateInput {
    @Field({ nullable: false })
    accountName: string;

    @Field({ nullable: false })
    accountNo: string;

    @Field((type) => $Enums.BankName)
    bankName: $Enums.BankName;
}
@ObjectType()
export class BankAccount_Response {
    @Field({ nullable: false })
    id: number;

    @Field({ nullable: false })
    account_name: string;

    @Field({ nullable: false })
    account_no: string;

    @Field((type) => $Enums.BankName)
    bank_name: $Enums.BankName;
}


@InputType()
export class BankAccount_DeleteInput {
    @Field()
    accountId: number;
}
@ObjectType()
export class BankAccount_DeleteResponse {
    @Field()
    message: string;
}
