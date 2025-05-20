import { BottomSheet } from '@/components/BottomSheet';
import InputText from '@/components/forms/InputText';
import Wrapper from '@/components/Wrapper';
import React, { useState } from 'react';
import { z } from 'zod';
import { useAppForm, IEvents } from '@/lib';
import { useRef } from 'react';
import { InputSelect } from '@/components/forms/InputSelect';
import InputButton from '@/components/forms/Button';
import { TText, TView } from '@/components';
import { useCountries } from '@/lib/zustand/countries';
import { useGetCountries } from '@/hooks/api';

const event: IEvents = 'AUTH_LOGIN';

const formSchema = z.object({
  amount: z.number().min(1),
  password: z.string().min(6, 'Password must be at least 6 characters'),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
});

export default function AirtimeComp() {
  const [amountPay, setPayAmount] = useState<number>();
  const countryStore = useCountries();
  const { data: countriesData } = useGetCountries();
  const countrySheet = useRef<RBSheetRef>(null);
  const getCallCode = () => {
    if (!countriesData || countriesData.length === 0) return '234';
    return countriesData.filter(
      val => val.isoName === countryStore.activeIso,
    )[0].callingCodes;
  };

  // const [login, { loading: isLoading }] = ApiHooks.useAuthLogin();
  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    amount: 0,
    password: '',
    operator: '',
    phone: '',
  });

  const handleSubmit = () => {
    countrySheet.current.open();
  };
  return (
    <Wrapper style={{ rowGap: 10 }}>
      <InputSelect
        label="Network"
        placeholder="Select operator"
        items={[
          {
            label: 'MTN',
            value: 'MTN',
          },
          {
            label: 'Airtel',
            value: 'Airtel',
          },
          {
            label: 'GLO',
            value: 'GLO',
          },
        ]}
      />

      <InputText
        label={'Phone'}
        leadingText={getCallCode()}
        value={formData.phone}
        onChangeText={text => {
          if (text.length > 10) return;
          handleChange('phone', text);
        }}
        placeholder={'Enter phone'}
        error={errors!.phone === undefined ? undefined : errors!.phone}
        keyboardType="number-pad"
      />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        value={formData.amount.toString()}
        onChangeText={text => {
          if (text.length > 10) return;
          handleChange('amount', text);
        }}
        placeholder={'Enter amount'}
        error={
          errors!.amount === undefined
            ? undefined
            : (errors!.amount as unknown as string)
        }
      />
      <TText>{amountPay}</TText>
      <InputButton title={'Submit'} onPress={handleSubmit} />

      <BottomSheet ref={countrySheet!}>
        <TView
          style={{
            alignItems: 'center',
            justifyContent: 'center',
            marginBottom: 50,
            paddingHorizontal: 20,
          }}
        >
          <TText>Confirm Details</TText>
          <TText>{formData.operator}</TText>
          <TText>{formData.password}</TText>
          <TText>{formData.phone}</TText>
          <TText>{formData.amount}</TText>

          <InputButton title={'Submit'} onPress={handleSubmit} />
        </TView>
      </BottomSheet>
    </Wrapper>
  );
}
