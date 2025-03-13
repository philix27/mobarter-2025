import * as auth from "./auth";
import * as bankAccount from "./bank";

const ApiHooks = {
  ...auth,
  ...bankAccount,
};

export default ApiHooks;
