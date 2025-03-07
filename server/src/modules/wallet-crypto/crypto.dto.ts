import { Field, ObjectType } from "@nestjs/graphql";
import { $Enums } from "@prisma/client";

@ObjectType()
export class WalletCrypto {
    @Field({ nullable: false })
    id: number;

    @Field({ nullable: false })
    address: string;

    @Field({ nullable: false })
    wallet_id: string;

    @Field((type) => $Enums.ChainType)
    chainType: $Enums.ChainType;
}
