import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { ExtractJwt, Strategy } from "passport-jwt";
import * as dotenv from "dotenv";

dotenv.config();

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
    constructor() {
        super({
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
            ignoreExpiration: false,
            secretOrKey: process.env.JWT_SECRET || "your_default_secret",
            // signOptions: { expiresIn: "5m" },
        });
    }

    async validate(payload: any) {
        return { userId: payload.userId, username: payload.username }; // Attach to request.user
    }
}
