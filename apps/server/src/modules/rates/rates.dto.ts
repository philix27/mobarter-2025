import {
    Field,
    Float,
    ObjectType,
} from "@nestjs/graphql";

@ObjectType()
export class ExchangeRate_Response {
    @Field((type) => Float)
    NGN: number;
    
    @Field((type) => Float)
    USD: number;
    
    @Field((type) => Float)
    EUR: number;
    
    @Field((type) => Float)
    GHS: number;

    @Field((type) => Float)
    KES: number;
}
