import {
    Controller,
    Get,
    Post,
    Put,
    Delete,
    Param,
    Body,
} from "@nestjs/common";

@Controller("auth")
export class AuthController {
    public constructor() {}
    private items: { id: string; name: string }[] = [];

    @Get()
    getAllItems() {
        return this.items;
    }

    @Get(":id")
    getItem(@Param("id") id: string) {
        return this.items.find((item) => item.id === id);
    }

    @Post()
    addItem(@Body() item: { id: string; name: string }) {
        this.items.push(item);
        return { message: "Item added successfully", item };
    }

    @Put(":id")
    updateItem(@Param("id") id: string, @Body() updateData: { name: string }) {
        const item = this.items.find((item) => item.id === id);
        if (item) {
            item.name = updateData.name;
            return { message: "Item updated successfully", item };
        }
        return { message: "Item not found" };
    }

    @Delete(":id")
    deleteItem(@Param("id") id: string) {
        this.items = this.items.filter((item) => item.id !== id);
        return { message: "Item deleted successfully" };
    }
}
