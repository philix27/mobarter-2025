import { InputButton, InputSelect, InputText } from '@/components/forms'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { z } from 'zod'
import { useAddAcct } from './api.bank'
import { BankName } from '@/graphql'
import { toast, TView } from '@/components'

const enumToList = (_enum: any) => {
  const list = Object.keys(_enum).map((key) => {
    return {
      key,
      value: _enum[key],
    }
  })
  return list
}
const formSchema = z.object({
  bank: z.string().min(3, 'Required'),
  accountName: z.string().min(4, 'Required'),
  accountNo: z.string().max(10, { message: 'maximum of 10 numbers' }),
})

type IFormData = z.infer<typeof formSchema>

export function AddBankAccount() {
  const [mutate] = useAddAcct()

  const f = useForm<IFormData>({
    resolver: zodResolver(formSchema),
  })

  const onSubmit = async (formData: IFormData) => {
    await mutate({
      variables: {
        input: {
          accountName: formData.accountName,
          accountNo: formData.accountNo,
          bankName: formData.bank as BankName,
        },
      },
      onCompleted() {
        toast.success('Success! Account Added')
        f.setValue('accountName', '')
        f.setValue('accountNo', '')
      },
      onError() {
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
        // maxLength={10}
        // minLength={10}
        error={f.formState.errors.accountNo && f.formState.errors.accountNo.message}
        // control={f.register('accountNo')}
      />
      <InputText
        placeholder="Enter account name"
        label="Account Name"
        error={f.formState.errors.accountName && f.formState.errors.accountName.message}
        // control={f.register('accountName')}
      />
      <InputButton title="Add" style={{ width: '50%' }} onPress={f.handleSubmit(onSubmit)} />
    </TView>
  )
}
