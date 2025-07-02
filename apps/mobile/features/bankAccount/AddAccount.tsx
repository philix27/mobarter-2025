import { InputButton, InputSelect, InputText } from '@/components/forms'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { z } from 'zod'

import { toast, TView } from '@/components'
import { BtmSheet } from '@/components/layout'
import { ActivityIndicator } from 'react-native'
import { Api } from '@/graphql'

const formSchema = z.object({
  bank: z.string().min(3, 'Required'),
  bankCode: z.string().min(3, 'Required'),
  // accountName: z.string().min(4, 'Required'),
  accountNo: z.string().max(10, { message: 'maximum of 10 numbers' }),
})

type IFormData = z.infer<typeof formSchema>

export function AddBankAccount() {
  const confirmModal = BtmSheet.useRef()
  const [mutate] = Api.useAddAcct()
  const { loading, data: BankList } = Api.useBankList()

  const f = useForm<IFormData>({
    resolver: zodResolver(formSchema),
  })
  const { data: nameData, loading: nameLoading } = Api.useBankAccountName({
    accountNo: f.getValues('accountNo'),
    bankCode: f.getValues('bankCode'),
  })

  const onSubmit = async (formData: IFormData) => {
    if (!nameData) {
      toast.error('Account name is needed')
      return
    }
    confirmModal.current.open()
  }

  const onConfirm = async () => {
    const actName = nameData?.bank_verifyAccountNo.account_name
    await mutate({
      variables: {
        input: {
          accountName: actName!,
          accountNo: f.getValues('accountNo'),
          bankName: f.getValues('bank'),
          bankCode: f.getValues('bankCode'),
        },
      },
      onCompleted() {
        toast.success('Success! Account Added')
        f.setValue('accountNo', '')
        confirmModal.current.close()
      },
      onError(e) {
        console.log('Err from account: ' + e)
        toast.error('Could not add your account')
      },
      refetchQueries: [],
    })
  }

  return (
    <TView style={{ width: '100%', rowGap: 20, alignItems: 'center' }}>
      {loading ? (
        <ActivityIndicator size={'small'} />
      ) : (
        BankList && (
          <InputSelect
            label="Select Bank"
            onValueChange={(value: string) => {
              f.setValue('bankCode', value)
              const selected = BankList.bankList.filter((v) => v.bankCode === value)[0]

              f.setValue('bank', selected.bankName)
            }}
            value={f.getValues('bank')}
            items={BankList.bankList.map((v) => {
              return {
                label: v.bankName,
                value: v.bankCode || v.bankName,
              }
            })}
            error={f.formState.errors.bank && f.formState.errors.bank.message}
          />
        )
      )}

      <InputText
        keyboardType="number-pad"
        placeholder="Enter account number"
        label="Account number"
        onChangeText={(e) => {
          if (e.length < 11) {
            f.setValue('accountNo', e)
          } else {
            f.setError('accountNo', { message: 'Maximum of 10 numbers' })
          }
        }}
        value={f.getValues('accountNo')}
        error={f.formState.errors.accountNo && f.formState.errors.accountNo.message}
      />

      {nameLoading ? (
        <ActivityIndicator />
      ) : (
        <InputText
          label="Account Name"
          placeholder="Loading..."
          value={nameData ? nameData.bank_verifyAccountNo.account_name : 'Searching...'}
          disabled
        />
      )}

      <InputButton title="Add" style={{ width: '50%' }} onPress={f.handleSubmit(onSubmit)} />

      <BtmSheet.Modal title="Confirm Bank Details" ref={confirmModal!}>
        <BtmSheet.Row text1="Bank" text2={f.getValues('bank')} />
        <BtmSheet.Row text1="Account No" text2={f.getValues('accountNo')} />
        <BtmSheet.Row text1="Account Name" text2={nameData?.bank_verifyAccountNo.account_name!} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Confirm'} style={{ width: '50%' }} onPress={onConfirm} />
      </BtmSheet.Modal>
    </TView>
  )
}
