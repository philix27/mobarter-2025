import { useMutation } from '@apollo/client'
import { zodResolver } from '@hookform/resolvers/zod'
import {
  BankAccount_CreateDocument,
  BankName,
  MutationBankAccount_CreateArgs,
  MutationResponse,
} from '@repo/api'
import { useForm } from 'react-hook-form'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { z } from 'zod'

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
  const [mutate] = useMutation<
    MutationResponse<'bankAccount_create'>,
    MutationBankAccount_CreateArgs
  >(BankAccount_CreateDocument)

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
    <div className="">
      <form className="px-2 flex flex-col py-1 gap-y-4" onSubmit={f.handleSubmit(onSubmit)}>
        <AppSelect
          label="Bank"
          onChange={(value: string) => {
            f.setValue('bank', value)
          }}
          // data={[{ value: BankName.NgAccess, label: BankName.NgAccess }]}
          data={enumToList(BankName).map((v) => {
            return {
              value: v.value,
              label: v.key,
            }
          })}
          error={f.formState.errors.bank && f.formState.errors.bank.message}
        />
        <Input
          type="number"
          placeholder="Enter account number"
          label="Account number"
          maxLength={10}
          minLength={10}
          // min={10}
          // max={10}
          error={f.formState.errors.accountNo && f.formState.errors.accountNo.message}
          control={f.register('accountNo')}
        />
        <Input
          type="text"
          placeholder="Enter account name"
          label="Account Name"
          error={f.formState.errors.accountName && f.formState.errors.accountName.message}
          control={f.register('accountName')}
        />
        <div className="flex items-center justify-center">
          <Button type="submit" className="w-[65%]">
            Add
          </Button>
        </div>
      </form>
    </div>
  )
}
