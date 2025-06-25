export * from './currencySmbol'
export * from './useColor'
export * from './usePrice'
export * from './useCollectors'
import * as wallet from './web3/hooks'
import * as collectors from './useCollectors'
import * as currency from './currencySmbol'
import * as color from './useColor'
import * as price from './usePrice'
import { useContext } from 'react'
import { TransactionsContext } from '@/lib/providers/TransactionsProvider'

/** 
Context hook for Transactions
*/
export const useTxn = () => {
  const context = useContext(TransactionsContext)
  if (!context) {
    throw new Error('useResponse must be used within a TransactionsProvider')
  }
  return context
}

export const AppHooks = {
  ...wallet,
  ...collectors,
  ...currency,
  ...color,
  ...price,
  useTxn,
}
export default AppHooks
