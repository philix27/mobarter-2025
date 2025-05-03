import { useMutation } from '@apollo/client'
import { zodResolver } from '@hookform/resolvers/zod'
import {
  AdvertStatus,
  Adverts_CreateDocument,
  CurrencyCrypto,
  CurrencyFiat,
  MutationAdverts_CreateArgs,
  MutationResponse,
  TradeType,
} from '@repo/api'
import React from 'react'
import { useForm } from 'react-hook-form'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'

import { IFormData, schema } from './schema'

export function AddAdsView() {
  // const [showConfirm, setConfirm] = useState(false)
  const [mutate] = useMutation<MutationResponse<'adverts_create'>, MutationAdverts_CreateArgs>(
    Adverts_CreateDocument
  )

  const f = useForm<IFormData>({
    resolver: zodResolver(schema),
  })

  const onSubmit = async (formData: IFormData) => {
    await mutate({
      variables: {
        input: {
          advertStatus: AdvertStatus.Open,
          currencyCrypto: formData.crypto as CurrencyCrypto,
          currencyFiat: formData.fiat as CurrencyFiat,
          duration: `${formData.duration} minutes`,
          instructions: formData.instructions,
          limitLower: formData.limitLower,
          limitUpper: formData.limitUpper,
          rateFloat: formData.rate,
          isFloatRate: true,
          tradeType: formData.fx as TradeType,
          wallet_address: '0x20F50b8832f87104853df3FdDA47Dd464f885a49',
          fiatAmountPerCrypto: formData.rate,
          merchant_id: 2,
        },
      },
      onCompleted() {
        toast.success('Success! Account Added')
      },
      onError() {
        toast.error('Could not add your account')
      },
      refetchQueries: [],
    })
  }
  // TODO: Confirm screen
  // const handleConfirmAndSubmit = async (formData: IFormData) => {
  //   toast.success('Success! Account Added' + formData.crypto)

  // }

  // if (showConfirm) return <ConfirmDetails getValues={getValues} />
  return (
    <form
      className="w-full gap-y-3 flex flex-col items-center justify-center"
      onSubmit={f.handleSubmit(onSubmit)}
    >
      <AppSelect
        label="FX"
        onChange={(value: string) => {
          f.setValue('fx', value)
        }}
        data={[
          { value: TradeType.Buy, label: TradeType.Buy },
          { value: TradeType.Sell, label: TradeType.Sell },
        ]}
        error={f.formState.errors.fx && f.formState.errors.fx.message}
      />
      <AppSelect
        label="Crypto Token"
        onChange={(value: string) => {
          f.setValue('crypto', value)
        }}
        data={[
          { value: CurrencyCrypto.Cusd, label: CurrencyCrypto.Cusd },
          { value: CurrencyCrypto.Eth, label: CurrencyCrypto.Eth },
        ]}
        error={f.formState.errors.crypto && f.formState.errors.crypto.message}
      />
      {/* <AppSelect
        label="Fiat Currency"
        onChange={(value: string) => {
          f.setValue('fiat', value)
        }}
        data={[
          { value: mapCountryToIso, label: CurrencyFiat.Ng },
          { value: CurrencyFiat.Ke, label: CurrencyFiat.Ke },
        ]}
        error={f.formState.errors.fiat && f.formState.errors.fiat.message}
      /> */}
      <Input
        label="Amount"
        placeholder="Floating rate"
        type="number"
        min="0.00"
        step="0.001"
        error={f.formState.errors.rate && f.formState.errors.rate.message}
        control={f.register('rate', { valueAsNumber: true })}
        //TODO: desc={formatCurrency(f.getValues('rate'), 0)}
      />
      <Input
        label="Lower Limit"
        placeholder="Lower Limit"
        type="number"
        error={f.formState.errors.limitLower && f.formState.errors.limitLower.message}
        control={f.register('limitLower', { valueAsNumber: true })}
      />
      <Input
        label="Upper Limit"
        placeholder="Upper Limit"
        type="number"
        error={f.formState.errors.limitUpper && f.formState.errors.limitUpper.message}
        control={f.register('limitUpper', { valueAsNumber: true })}
      />

      <Input
        label="Duration in minutes"
        placeholder="Enter estimated duration"
        type="number"
        error={f.formState.errors.duration && f.formState.errors.duration.message}
        control={f.register('duration', { valueAsNumber: true })}
      />
      <Input
        label="Instructions"
        placeholder="Any specific instructions"
        error={f.formState.errors.instructions && f.formState.errors.instructions.message}
        control={f.register('instructions')}
      />

      <Button type="submit" className="w-[65%]">
        Add
      </Button>
    </form>
  )
}
