export async function fetchWithTimeout(
  resource: RequestInfo,
  options?: RequestInit,
  timeout = 10000,
) {
  const controller = new AbortController();
  const id = setTimeout(() => controller.abort(), timeout);
  const response = await fetch(resource, {
    ...options,
    signal: controller.signal,
  });
  clearTimeout(id);
  return response;
}

export function sleep(milliseconds: number) {
  return new Promise(resolve => setTimeout(() => resolve(true), milliseconds));
}

export const PROMISE_TIMEOUT = '__promise_timeout__';

export async function promiseTimeout<T>(
  promise: Promise<T>,
  milliseconds: number,
) {
  // Create a promise that rejects in <ms> milliseconds
  const timeout = new Promise<T>((_resolve, reject) => {
    const id = setTimeout(() => {
      clearTimeout(id);
      reject(new Error(PROMISE_TIMEOUT));
    }, milliseconds);
  });
  // Awaits the race, which will throw on timeout
  const result = await Promise.race([promise, timeout]);
  return result;
}

export function asyncTimeout<P extends Array<any>, R>(
  inner: (...args: P) => Promise<R>,
  timeout: number,
) {
  return async (...args: P): Promise<R> => {
    const resultP = inner(...args);
    const result = await promiseTimeout(resultP, timeout);
    return result;
  };
}
