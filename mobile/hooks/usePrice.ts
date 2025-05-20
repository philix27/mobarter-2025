import { useQuery } from '@apollo/client';
import { FxRate_GetAllDocument, QueryResponse } from '@repo/api';
import { useState } from 'react';
import { AppStores } from '../lib/zustand';
import { log } from '@/lib';

export function usePrice() {
  const store = AppStores.useCountries();
  const [amountToPay, setAmtToPay] = useState(0);
  const { data: fxData, error } = useQuery<QueryResponse<'fxRate_GetAll'>>(
    FxRate_GetAllDocument,
  );

  if (error) {
    log.error('GET_RATES', error.message);
  }

  if (!fxData)
    return {
      cusdAmt: 0,
      handleOnChange: () => {
        return;
      },
    };

  const rate = fxData!.fxRate_GetAll[store.activeIso];

  const handleOnChange = (amountInFiatCurrency: number) => {
    const c = amountInFiatCurrency / rate;
    const plusFee = c + 0.1;
    setAmtToPay(plusFee);
  };

  return { amountToPay, handleOnChange };
}
