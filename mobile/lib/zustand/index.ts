import { useAdvert } from "./adverts";
import { useAuth } from "./auth";
import { useView } from "./screens";
import { useSettings } from "./settings";
import { useUserInfo } from "./user";

export const AppStores = {
  useSettings,
  useView,
  useUserInfo,
  useAuth,
  useAdvert,
};
