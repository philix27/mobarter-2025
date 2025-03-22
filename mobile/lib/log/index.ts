import { IEvents } from "./events";

const getFormattedDateTime = (): string => {
  const now = new Date();

  // Format: YYYY-MM-DD HH:MM:SS
  const formattedDate = now.toISOString().slice(0, 10); // Get YYYY-MM-DD
  const formattedTime = now.toLocaleTimeString("en-US", {
    hour12: false,
    hour: "2-digit",
    minute: "2-digit",
    second: "2-digit",
  });

  return `${formattedDate} ${formattedTime}`;
};

const timestamp = getFormattedDateTime(); // Example: 2025-03-20 14:30:15

export const log = {
  info: (event: IEvents, message?: any, ...optionalParams: any[]) => {
    console.log(`${timestamp} ${event}`, message, optionalParams);
  },
  error: (event: IEvents, message?: any, ...optionalParams: any[]) => {
    console.error(`${timestamp} ${event}`, message, optionalParams);
  },
  debug: (event: IEvents, message?: any, ...optionalParams: any[]) => {
    console.debug(`${timestamp} ${event}`, message, optionalParams);
  },
};
