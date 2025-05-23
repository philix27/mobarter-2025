import * as auth from './auth'
import * as bank from './bank'
import * as wallet from './wallet'
import * as advert from './adverts'
import * as utilities from './utilities'
import * as orders from './orders'
export * from './types'
export * from './fx'

export const Api = {
  ...auth,
  ...bank,
  ...wallet,
  ...advert,
  ...utilities,
  ...orders,
}
