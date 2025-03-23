import * as auth from "./auth";
import * as bankAccount from "./bank";
import * as wallets from "./wallet";

export const ApiHooks = {
  ...auth,
  ...bankAccount,
  ...wallets,
};
