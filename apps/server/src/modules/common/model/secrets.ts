import { Config } from "./config";

export const secrets: Record<keyof Config, string> = {
    PORT: process.env.PORT!,
    API_PREFIX: process.env.API_PREFIX!,
    SWAGGER_ENABLE: process.env.SWAGGER_ENABLE!,
    JWT_SECRET: process.env.JWT_SECRET!,
    JWT_ISSUER: process.env.JWT_ISSUER!,
    HEALTH_TOKEN: process.env.HEALTH_TOKEN!,
    PASSENGERS_ALLOWED: process.env.PASSENGERS_ALLOWED!,
    PRIVY_APP_ID: process.env.PRIVY_APP_ID!,
    PRIVY_APP_SECRET: process.env.PRIVY_APP_SECRET!,
    PRIVY_AUTH_KEY: process.env.PRIVY_AUTH_KEY!,
};
