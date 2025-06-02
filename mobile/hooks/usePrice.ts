import { useState } from 'react';
import { AppStores } from '../lib/zustand';
import { log } from '@/lib';
import { ExchangeRate_Response, useFxRate } from '@/graphql';
import { useFxRates } from '@/graphql/endpoints/fxx';

export function usePrice() {
  const store = AppStores.useCountries();
  const [amountToPay, setAmtToPay] = useState(0);
  const { data: fxData, error } = useFxRates();

  if (error) {
    // log.error('GET_RATES', error.message);
    log.error('GET_RATES', JSON.stringify(error));
  }

  if (!fxData)
    return {
      cusdAmt: 0,
      handleOnChange: () => {
        return;
      },
    };

  // console.log('Fx-90', fxData);
  const iso = store.activeIso as keyof ExchangeRate_Response
  // const fx = fxData.data.fxRate_GetAll as any;

  // const rate = fx[iso];
  const rate = fxData!.fxRate_GetAll[iso] as number

  const handleOnChange = (amountInFiatCurrency: number) => {
    const c = amountInFiatCurrency / rate;
    const plusFee = c + 0.1;
    // console.log('Rate', rate);
    setAmtToPay(plusFee);
  };

  return { amountToPay, handleOnChange };
}

