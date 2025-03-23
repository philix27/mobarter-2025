import { useAuth } from "./auth";
import { useP2P } from "./p2p";
import { useView } from "./screens";
import { useSettings } from "./settings";
import { useUserInfo } from "./user";

export const AppStores = {
  useSettings,
  useView,
  useUserInfo,
  useAuth,
  useP2P,
};
