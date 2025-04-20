import { TokenId } from 'src/lib/config/tokens'
import { AccountBalances } from 'src/lib/zustand/swap'

export type SwapDirection = 'in' | 'out'

export interface SwapFormValues {
  fromTokenId: TokenId
  toTokenId: TokenId
  amount: number
  quote: number
  direction: SwapDirection
  slippage: string
}

export type ToCeloRates = Partial<Record<TokenId, ExchangeRate>>

// Raw Mento chain data from an Exchange contract
export interface ExchangeRate {
  stableBucket: string
  celoBucket: string
  spread: string
  lastUpdated: number
}

// Result after ExchangeRate gets processed
export interface SimpleExchangeRate {
  rate: number
  lastUpdated: number
}

export type SizeLimits = Partial<Record<TokenId, { min: string; max: string }>>

export interface IUseFormValidatorProps {
  balances: AccountBalances
  isBalanceLoaded: boolean | undefined
  isWalletConnected: boolean | undefined
}

export interface ISubmitButtonProps {
  isWalletConnected: boolean | undefined
  isBalanceLoaded: boolean | undefined
}
