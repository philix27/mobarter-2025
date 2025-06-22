import { AppStores } from '../lib/zustand'
import { log } from '@/lib'
import { Api, ExchangeRate_Response } from '@/graphql'

export function usePrice(amountInFiatCurrency: number | string) {
  const store = AppStores.useCountries()
  const { data: fxData, error } = Api.useFxRates()

  if (error) {
    log.error('GET_RATES', JSON.stringify(error))
  }

  if (!fxData)
    return {
      amountToPay: 0,
    }

  const iso = store.activeIso as keyof ExchangeRate_Response

  // const rate = fx[iso];
  const rate = fxData!.fxRate_GetAll[iso] as number

  // useMemo(() => {
  if (typeof amountInFiatCurrency === 'string' && parseFloat(amountInFiatCurrency) < 0) {
    // setAmtToPay(0)
    return {
      amountToPay: 0,
    }
  } else if (typeof amountInFiatCurrency === 'number' && amountInFiatCurrency < 0) {
    // setAmtToPay(0)
    return {
      amountToPay: 0,
    }
  } else {
    const c = parseFloat(amountInFiatCurrency as string) / rate
    const plusFee = c + 0.1
    // console.log('Rate', rate);
    // setAmtToPay(plusFee)
    return {
      amountToPay: plusFee,
    }
  }
}
