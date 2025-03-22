import * as auth from "./auth";
import * as bankAccount from "./bank";

export const ApiHooks = {
  ...auth,
  ...bankAccount,
};
