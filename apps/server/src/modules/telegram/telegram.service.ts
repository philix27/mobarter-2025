import { Injectable } from "@nestjs/common";
import { LoggerService } from "../common";
import { JwtService } from "@nestjs/jwt";
import { validate } from "@telegram-apps/init-data-node";
import { Telegram_GenerateTokenInput, Telegram_GenerateTokenResponse } from "./telegram.dto";

type ITgUser = {
    username: string;
    id: string;
    photo_url?: string;
    first_name?: string;
    last_name?: string;
};

@Injectable()
export class TelegramService {
    public constructor(
        private readonly logger: LoggerService,
        private readonly jwt: JwtService,
    ) {}

    private async generateJwtToken(userData: ITgUser) {
        this.logger.info("Generate JWT Token");
        const payload = {
            telegram_id: userData.id,
            username: userData.username,
            avatar_url: userData.photo_url || "https://www.gravatar.com/avatar",
            sub: userData.id.toString(),
            name: userData.first_name,
            iss: "https://api.telegram.org",
            iat: Math.floor(Date.now() / 1000),
            // exp: Math.floor(Date.now() / 1000) + 60 * 60, // Token valid for 1 hour
        };
        return this.jwt.sign(payload, {
            privateKey: process.env.JWT_SECRET,
            secret: process.env.JWT_SECRET,
        });

        // return jwt.sign(payload, process.env.JWT_SECRET, {
        //     algorithm: "RS256",
        //     keyid: process.env.JWT_KEY_ID,
        // });
    }

    async generateToken(
        params: Telegram_GenerateTokenInput,
    ): Promise<Telegram_GenerateTokenResponse> {
        this.logger.info("Telegram endpoint");
        const { initDataRaw, isMocked, photo_url, id, username, first_name } =
            params; // Extract photoUrl from request body

        if (!initDataRaw) {
            throw new Error("initDataRaw is required");
        }

        if (isMocked) {
            // Handle mock data parsing
            // const data = new URLSearchParams(initDataRaw) as any;
            // const user = JSON.parse(decodeURIComponent(data.get("user")));
            const mockUser = {
                id: id,
                username: username,
                photo_url: photo_url || "https://www.gravatar.com/avatar",
                first_name: first_name,
            };

            const token = await this.generateJwtToken(mockUser);
            return { token };
        }

        try {
            // Validate the real initDataRaw using @telegram-apps/init-data-node
            validate(initDataRaw, process.env.TELEGRAM_BOT_TOKEN!);

            // If validation is successful, parse the data
            const data = new URLSearchParams(initDataRaw);
            const user = JSON.parse(decodeURIComponent(data.get("user")!));
            const validatedUser = {
                ...user,
                photo_url:
                    photo_url ||
                    user.photo_url ||
                    "https://www.gravatar.com/avatar",
            };

            // Generate the JWT token
            const token = await this.generateJwtToken(validatedUser);
            return { token };
        } catch (error) {
            console.error("Error validating Telegram data:", error);
            throw new Error("Invalid Telegram data");

            // return { token: "" };
        }
    }


    async validateToken(initDataRaw: string) {
          validate(initDataRaw, process.env.TELEGRAM_BOT_TOKEN!);
    }

}
