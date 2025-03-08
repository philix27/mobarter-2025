import { Injectable } from "@nestjs/common";
import { JwtService } from "@nestjs/jwt";

@Injectable()
export class JwtAppService {
    public constructor(private readonly jwtService: JwtService) {}

    public generateToken(payload: object): string {
        return this.jwtService.sign(payload);
    }
    // Verify Token (optional if using JwtStrategy)
    public verifyToken(token: string): any | undefined {
        try {
            const obj = this.jwtService.verify(token);
            return obj;
        } catch (error) {
            return undefined; // Invalid token
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
}
