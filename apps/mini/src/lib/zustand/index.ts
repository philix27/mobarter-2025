import { useAdvert } from './adverts';
import { useBankAccount } from './bank';
import { useGiftCard } from './giftcard';
import { useKyc } from './kyc';
import { useOrder } from './orders';
import { useView } from './screens';
import { useSendToBank } from './sendToBank';
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
  useSendToBank,
  useKyc,
  useGiftCard,
  useBankAccount,
}