import {
    Field,
    Int,
    ObjectType,
} from "@nestjs/graphql";

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
