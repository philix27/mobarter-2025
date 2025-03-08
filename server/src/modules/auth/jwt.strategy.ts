import { Injectable } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { ExtractJwt, Strategy } from "passport-jwt";
// import { secrets } from "../common";
// import { ConfigType } from "@nestjs/config";
// import jwtConfig from "./jwt.config";
// import { JwtCryptoService } from "./jwt.service";
import { secrets } from "../common";

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
    constructor() {
        // private cryptoService: JwtCryptoService // @Inject(jwtConfig.KEY) jwtConfiguration: ConfigType<typeof jwtConfig>,
        super({
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
            ignoreExpiration: false,
            secretOrKey: secrets.JWT_SECRET,
        });

        console.log("JWT Strategy constructor call");
    }

    async validate(payload: any) {
        // const isValid = this.cryptoService.verifyToken(payload);

        // if (isValid) return { payload };
        // console.log("JWT Strategy called with payload:", payload); // ✅ Debugging
        // return { message: "Unauthorized access" }; // Attach to request.user
        return { ...payload }; // Attach to request.user
    }
}
