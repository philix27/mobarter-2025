import { Redis } from "@upstash/redis";
import { logger } from "../utils";

if (!process.env.REDIS_URL || !process.env.REDIS_TOKEN) {
  logger.warn(
    "REDIS_URL or REDIS_TOKEN environment variable is not defined, please add to enable background notifications and webhooks.",
  );
}

export const redis =
  process.env.REDIS_URL && process.env.REDIS_TOKEN
    ? new Redis({
        url: process.env.REDIS_URL,
        token: process.env.REDIS_TOKEN,
      })
    : null;
