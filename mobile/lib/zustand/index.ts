import { useAdvert } from "./adverts";
import { useView } from "./screens";
import { useSettings } from "./settings";
import { useUserInfo } from "./user";
import { useCountries } from './countries';
import { useTokens } from "./tokens";

export const AppStores = {
  useSettings,
  useView,
  useUserInfo,
  useAdvert,
  useCountries,
  useTokens
};
