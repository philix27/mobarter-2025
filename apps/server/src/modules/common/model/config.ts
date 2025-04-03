export interface Config {
    readonly PORT: number;

    readonly API_PREFIX: string;

    readonly SWAGGER_ENABLE: number;

    readonly JWT_SECRET: string;

    readonly JWT_ISSUER: string;

    readonly HEALTH_TOKEN: string;

    readonly PASSENGERS_ALLOWED: string;
    readonly PRIVY_APP_ID: string;
    readonly PRIVY_APP_SECRET: string;
    readonly PRIVY_AUTH_KEY: string;
}

