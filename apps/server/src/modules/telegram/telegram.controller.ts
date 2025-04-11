import {
    Controller,
    Post,
    Body,
} from "@nestjs/common";

@Controller("telegram-auth")
export class TelegramController {
    public constructor() {}



    @Post("thirdweb")
    verifier(@Body() item: any) {

        return { message: "Item added successfully", item };
    }
}
