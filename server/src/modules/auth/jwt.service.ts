import { Injectable } from "@nestjs/common";
import { JwtService } from "@nestjs/jwt";
import * as bcrypt from "bcryptjs";

@Injectable()
export class JwtCryptoService {
    saltRounds = 10;

    public constructor(private readonly jwtService: JwtService) {}

    public generateToken(payload: object): string {
        return this.jwtService.sign(payload);
    }
    // Verify Token (optional if using JwtStrategy)
    public verifyToken(token: string): any {
        try {
            return this.jwtService.verify(token);
        } catch (error) {
            return null; // Invalid token
        }
    }

    // Sign OTP using JWT
    public signOTP(otp: string, expiresIn = "10m"): string {
        return this.jwtService.sign({ otp }, { expiresIn });
    }

    // Verify if a given OTP matches the one in the token
    public verifyOTP(token: string, providedOTP: string): boolean {
        try {
            const decoded: any = this.jwtService.verify(token); // Verify the JWT token
            return decoded.otp === providedOTP; // Compare OTPs
        } catch (error) {
            return false; // Token is invalid or expired
        }
    }

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
