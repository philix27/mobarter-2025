export * from './currencySmbol'
export * from './useColor'
export * from './usePrice'
export * from './useCollectors'
import * as wallet from './web3/hooks'
import * as collectors from './useCollectors'
import * as currency from './currencySmbol'
import * as color from './useColor'
import * as price from './usePrice'

export const AppHooks = {
  ...wallet,
  ...collectors,
  ...currency,
  ...color,
  ...price,
}
export default AppHooks
