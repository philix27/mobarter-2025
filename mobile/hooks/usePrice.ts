import { useState } from 'react';
import { AppStores } from '../lib/zustand';
import { log } from '@/lib';
import { ExchangeRate_Response, useFxRate } from '@/graphql';

export function usePrice() {
  const store = AppStores.useCountries();
  const [amountToPay, setAmtToPay] = useState(0);
  const { data: fxData, error } = useFxRate();

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
  const iso = store.activeIso;
  const fx = fxData.data.fxRate_GetAll as any;
  console.log('Before Rate', fx);
  const rate = fx[iso];

  const handleOnChange = (amountInFiatCurrency: number) => {
    const c = amountInFiatCurrency / rate;
    const plusFee = c + 0.1;
    // console.log('Rate', rate);
    console.log('Iso', iso);
    console.log('amountInFiatCurrency', amountInFiatCurrency);
    setAmtToPay(plusFee);
  };

  return { amountToPay, handleOnChange };
}
