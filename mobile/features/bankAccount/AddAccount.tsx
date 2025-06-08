import { InputButton, InputSelect, InputText } from '@/components/forms'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { z } from 'zod'
import { useAddAcct } from './api.bank'
import { BankName } from '@/graphql'
import { toast, TView } from '@/components'
import { BtmSheet } from '@/components/layout'
import { enumToList } from '@/lib'

const formSchema = z.object({
  bank: z.string().min(3, 'Required'),
  accountName: z.string().min(4, 'Required'),
  accountNo: z.string().max(10, { message: 'maximum of 10 numbers' }),
})

type IFormData = z.infer<typeof formSchema>

export function AddBankAccount() {
  const confirmModal = BtmSheet.useRef()
  const [mutate] = useAddAcct()
  const f = useForm<IFormData>({
    resolver: zodResolver(formSchema),
  })

  const onSubmit = async (formData: IFormData) => {
    confirmModal.current.open()
  }

  const onConfirm = async () => {
    await mutate({
      variables: {
        input: {
          accountName: f.getValues('accountName'),
          accountNo: f.getValues('accountNo'),
          bankName: f.getValues('bank') as BankName,
        },
      },
      onCompleted() {
        toast.success('Success! Account Added')
        f.setValue('accountName', '')
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
      <InputSelect
        label="Select Bank"
        onValueChange={(value: string) => {
          f.setValue('bank', value)
        }}
        value={f.getValues('bank')}
        // data={[{ value: BankName.NgAccess, label: BankName.NgAccess }]}
        items={enumToList(BankName).map((v) => {
          return {
            value: v.value,
            label: v.key,
          }
        })}
        error={f.formState.errors.bank && f.formState.errors.bank.message}
      />
      <InputText
        keyboardType="number-pad"
        placeholder="Enter account number"
        label="Account number"
        onChangeText={(e) => {
          f.setValue('accountNo', e)
        }}
        value={f.getValues('accountNo')}
        error={f.formState.errors.accountNo && f.formState.errors.accountNo.message}
        // maxLength={10}
        // minLength={10}
        // control={f.register('accountNo')}
      />
      <InputText
        placeholder="Enter account name"
        label="Account Name"
        value={f.getValues('accountName')}
        error={f.formState.errors.accountName && f.formState.errors.accountName.message}
        onChangeText={(e) => {
          f.setValue('accountName', e)
        }}
        // control={f.register('accountName')}
      />
      <InputButton title="Add" style={{ width: '50%' }} onPress={f.handleSubmit(onSubmit)} />

      <BtmSheet.Modal title="Confirm Bank Details" ref={confirmModal!}>
        <BtmSheet.Row text1="Bank" text2={f.getValues('bank')} />
        <BtmSheet.Row text1="Account No" text2={f.getValues('accountNo')} />
        <BtmSheet.Row text1="Account Name" text2={f.getValues('accountName')} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Confirm'} style={{ width: '50%' }} onPress={onConfirm} />
      </BtmSheet.Modal>
    </TView>
  )
}
