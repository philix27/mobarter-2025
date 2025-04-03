import { Field, ObjectType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

@ObjectType()
export class WalletCryptoResponse {
    @Field({ nullable: false })
    id: number;

    @Field({ nullable: false })
    address: string;

    @Field({ nullable: true })
    wallet_id?: string;

    @Field({ nullable: true })
    minipay?: boolean;

    @Field((type) => $Enums.ChainType)
    chainType: $Enums.ChainType;
}

// {
//     id: number;
//     created_at: Date | null;
//     updated_at: Date | null;
//     address: string;
//     wallet_id: string | null;
//     chainType: $Enums.ChainType;
//     minipay: boolean | null;
//     user_id: number | null;
// }
