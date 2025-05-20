type AuthEvents =
  | 'AUTH_LOGIN'
  | 'AUTH_SEND_EMAIL_OTP'
  | 'AUTH_RESET_PASSWORD'
  | 'AUTH_VERIFY_OTP'
  | 'AUTH_ACCOUNT_CREATED'
  | 'AUTH_SIGNUP';
type MarketEvents = 'HOME_LOGIN' | 'HOME_LOGIN';
type SwapEvents = 'SWAP_LOGIN' | 'SWAP_LOGIN';
type WithdrawalEvents = 'WITHDRAW_LOGIN' | 'WITHDRAW_LOGIN';
type P2PEvents = 'P2P_LOGIN' | 'P2P_LOGIN';

export type IEvents =
  | AuthEvents
  | MarketEvents
  | SwapEvents
  | WithdrawalEvents
  | P2PEvents
  | 'GET_RATES';
