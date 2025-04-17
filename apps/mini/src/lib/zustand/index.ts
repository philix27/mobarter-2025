import { useAdvert } from './adverts';
import { useOrder } from './orders';
import { useView } from './screens';
import { useSettings } from './settings';
import { useSwap } from './swap';
import { useUser } from './user';


export const AppStores = {
  useSettings,
  useView,
  useAdvert,
  useOrder,
  useUser,
  useSwap,
}