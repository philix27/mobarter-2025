import { Wrapper, BottomSheet } from '@/components/layout'
import { z } from 'zod'
import { useRef } from 'react'
import { InputSelect, InputButton, InputText } from '@/components/forms'
import { useCountries } from '@/lib/zustand/countries'
import { useGetCountries } from '@/api'
import { useColor, formatCurrency, useAppForm, client, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { TText, TView } from '@/components/ui'
import { createThirdwebClient, getContract, resolveMethod, toWei } from 'thirdweb'
import { defineChain } from 'thirdweb/chains'
import { prepareContractCall } from 'thirdweb'
import { useSendTransaction } from 'thirdweb/react'
import Big from 'big.js'

const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
})

// connect to your contract
export const contract = getContract({
  client,
  chain: defineChain(42220),
  address: '0xfe6e11223afeC4D329f82382F575e26082c2a340',
})

export default function AirtimeComp() {
  const store = AppStores.useCountries()

  const { mutate: sendTransaction } = useSendTransaction()
  // const [amountPay, setPayAmount] = useState<number>();
  const countryStore = useCountries()
  const { data: countriesData } = useGetCountries()
  const countrySheet = useRef<RBSheetRef>(null)
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()

  const getCallCode = () => {
    if (!countriesData || countriesData.length === 0) return '234'
    return countriesData.filter((val) => val.isoName === countryStore.activeIso)[0].callingCodes
  }
  const getCurrencySymbol = () => {
    if (!countriesData || countriesData.length === 0) return 'NGN'
    return countriesData.filter((val) => val.isoName === countryStore.activeIso)[0].currencySymbol
  }
  const getTokenAddress = () => {
    const addr = countryStore.tokens.filter(
      (val) => val.symbol === countryStore.activeTokenSymbol
    )[0].address
    return addr
  }

  // const [login, { loading: isLoading }] = ApiHooks.useAuthLogin();
  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    // Omit<typeof formSchema._type, 'amount'> & { amount: string }
    amount: '0',
    operator: '',
    phone: '',
  })

  const clearErr = () => {
    setErrors('amount', '')
    setErrors('operator', '')
    setErrors('phone', '')
  }

  const showErr = () => {
    const validation = formSchema.safeParse(formData)
    if (validation.success) {
      return
    }
    // clearErr(validation.error);
    const errorMessages = validation.error.format()
    setErrors('amount', errorMessages.amount?._errors[0] || '')
    setErrors('operator', errorMessages.operator?._errors[0] || '')
    setErrors('phone', errorMessages.phone?._errors[0] || '')
  }

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData)

    if (!validation.success) {
      showErr()
      console.log('Error in validation ' + validation.error.message)
      return
    }

    const leastAmount = isDev ? 50 : 50

    // const amt = parseFloat(formData.amount.toString())
    // if (amt == undefined || amt < leastAmount) {
    //   console.log('Error in amount value')
    //   setErrors('amount', `amount must be above ${leastAmount}`)
    //   return
    // }

    countrySheet.current.open()
  }

  const onPay = () => {
    const transaction = prepareContractCall({
      contract,
      maxFeePerGas: 30n,
      maxPriorityFeePerGas: 1n,
      method:
        'function requestAirtime(address token,uint256 amountPaid,uint256 amountOfAirtime,uint256 operatorId,uint256 fee)',
      params: [
        '0x765DE816845861e75A25fCA122bb6898B8B1282a',
        toWei('1'),
        toWei('1600'),
        toWei('460'),
        toWei('0.1'),
      ],
      erc20Value: {
        tokenAddress: '0x765DE816845861e75A25fCA122bb6898B8B1282a', // the address of the ERC20 token
        amountWei: toWei('1'), // the amount of tokens to transfer in wei
      },
    })
    sendTransaction(transaction)
  }

  return (
    <Wrapper style={{ rowGap: 10 }}>
      <InputSelect
        label="Network"
        placeholder="Select operator"
        error={errors && errors?.operator && errors!.operator}
        onValueChange={(v) => {
          handleChange('operator', v)
          clearErr()
        }}
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
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('phone', text)
          clearErr()
        }}
        placeholder={'Enter phone'}
        error={errors && errors?.phone && errors!.phone}
        keyboardType="number-pad"
      />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        leadingText={getCurrencySymbol()}
        placeholder={'Enter amount'}
        value={formData.amount.toString()}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('amount', text)
          handlePriceChange(parseFloat(text))
          clearErr()
        }}
        error={errors && errors?.amount && errors!.amount}
      />
      <TText>{amountToPay}</TText>
      <InputButton title={'Submit'} onPress={handleSubmit} />

      <BottomSheet ref={countrySheet!}>
        <TView
          style={{
            alignItems: 'center',
            marginBottom: 60,
            paddingTop: 10,
            paddingHorizontal: 10,
            width: '100%',
            rowGap: 12,
          }}
        >
          <TText type="subtitle">
            {`${amountToPay} ${countryStore.activeTokenSymbol}`}
            {/* {`${formatCurrency(parseFloat(amountToPay!.toString()))} ${countryStore.activeTokenSymbol}`} */}
          </TText>
          <TView style={{ height: 15 }} />
          <SimpleRow text1="Operator" text2={formData.operator} />
          <SimpleRow text1="Phone" text2={formData.phone} />
          <SimpleRow text1="Amount" text2={formData.amount.toString()} />
          <SimpleRow text1="Fee" text2={formData.amount.toString()} />
          <TView style={{ height: 25 }} />
          <InputButton title={'Pay'} onPress={onPay} />
        </TView>
      </BottomSheet>
    </Wrapper>
  )
}

function SimpleRow(params: { text1: string; text2: string }) {
  const color = useColor()
  return (
    <TView
      style={{
        width: '100%',
        flexDirection: 'row',
        alignItems: 'center',
        justifyContent: 'space-between',
      }}
    >
      <TText style={{ color: color.muted }}>{params.text1}</TText>
      <TText style={{ fontStyle: 'normal', fontWeight: '700' }}>{params.text2}</TText>
    </TView>
  )
}
