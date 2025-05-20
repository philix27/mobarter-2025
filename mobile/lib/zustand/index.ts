import { useAdvert } from "./adverts";
import { useView } from "./screens";
import { useSettings } from "./settings";
import { useUserInfo } from "./user";
import { useCountries } from './countries';

export const AppStores = {
  useSettings,
  useView,
  useUserInfo,
  useAdvert,
  useCountries,
};
