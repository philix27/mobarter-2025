import { useMutation } from '@apollo/client'
import {
  BankAccount_CreateDocument,
  BankName,
  MutationBankAccount_CreateArgs,
  MutationResponse,
} from '@repo/api'
import { toast } from 'react-toastify'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { useAppForm } from 'src/hooks/form'
import { z } from 'zod'

const formSchema = z.object({
  // bank: z.string().min(1, 'Required'),
  accountName: z.string().min(4, 'Required'),
  accountNo: z.string().min(10, 'Required').max(10, 'Need a valid account number'),
})

export function AddBankAccount() {
  const [mutate] = useMutation<
    MutationResponse<'bankAccount_create'>,
    MutationBankAccount_CreateArgs
  >(BankAccount_CreateDocument)
  const { formData, errors, handleChange, setErrors } = useAppForm<typeof formSchema._type>({
    // bank: 'Opay',
    accountName: '',
    accountNo: '',
  })

  const handleSubmit = async () => {
    const validation = formSchema.safeParse(formData)
    
    if (!validation.success) {
      toast.error('Check the form and try again')
      const errorMessages = validation.error.format()
      setErrors({
        // bank: errorMessages.bank?._errors[0] || '',
        accountName: errorMessages.accountName?._errors[0] || '',
        accountNo: errorMessages.accountNo?._errors[0] || '',
      })
      return
    }

    await mutate({
      variables: {
        input: {
          accountName: formData.accountName,
          accountNo: formData.accountNo,
          bankName: BankName.NgGtb,
        },
      },
      onCompleted() {
        toast.success('Success! Account Added')
        handleChange('accountNo', '')
        handleChange('accountName', '')
      },
      onError() {
        toast.error('Could not add your account')
      },
      refetchQueries: [],
    })
  }

  return (
    <div className="">
      <form
        className="px-2 flex flex-col py-1 gap-y-4"
        onSubmit={async (e) => {
          e.preventDefault()
          await handleSubmit()
        }}
      >
        <Input
          type="number"
          placeholder="Enter account number"
          label="Account number"
          maxLength={10}
          minLength={10}
          min={10}
          max={10}
          value={formData.accountNo}
          onChange={(e) => {
            if (e.target.value.length > 10) return;

            handleChange('accountNo', e.target.value)
          }}
          error={errors!.accountNo === undefined ? undefined : errors!.accountNo}
        />
        <Input
          type="text"
          placeholder="Enter account name"
          label="Account Name"
          value={formData.accountName}
          onChange={(e) => handleChange('accountName', e.target.value)}
          error={errors!.accountName === undefined ? undefined : errors!.accountName}
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
