import { Injectable } from "@nestjs/common";
import * as bcrypt from "bcryptjs";
import { JwtAppService } from "./jwt.service";

@Injectable()
export class CryptoService extends JwtAppService {
    saltRounds = 10;

    public generateOTP(length = 6) {
        return Array.from({ length }, () =>
            Math.floor(Math.random() * 10)
        ).join("");
    }

    // Function to hash a password
    public async hashPassword(password: string) {
        const salt = await bcrypt.genSalt(this.saltRounds);
        return await bcrypt.hash(password, salt);
    }

    // Function to compare a password with a hashed password
    public async verifyPassword(password: string, hashedPassword: string) {
        return await bcrypt.compare(password, hashedPassword);
    }
}
