import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { SelectCountryCard } from '@/features/country'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'

const formSchema = z.object({
  state: z.string().min(2, 'Required').max(100),
  street: z.string().min(2, 'Required').max(100),
  homeAddress: z.string().max(100),
})

type IFormData = z.infer<typeof formSchema>
export default function Page() {
  const f = useForm<IFormData>({
    resolver: zodResolver(formSchema),
  })

  const onSubmit = async (formData: IFormData) => {
    // confirmModal.current.open()
  }
  return (
    <>
      <HeaderBar title="Address" />
      <Wrapper>
        <SelectCountryCard />
        <InputText
          label="State"
          onChangeText={(e) => {
            f.setValue('state', e)
          }}
          value={f.getValues('state')}
          error={f.formState.errors.state && f.formState.errors.state.message}
        />
        <InputText
          label="Street"
          onChangeText={(e) => {
            f.setValue('street', e)
          }}
          value={f.getValues('street')}
          error={f.formState.errors.street && f.formState.errors.street.message}
        />
        <InputText
          label="Home Address"
          onChangeText={(e) => {
            f.setValue('homeAddress', e)
          }}
          value={f.getValues('homeAddress')}
          error={f.formState.errors.homeAddress && f.formState.errors.homeAddress.message}
        />
        <InputButton title="Submit" style={{ width: '50%' }} onPress={f.handleSubmit(onSubmit)} />
      </Wrapper>
    </>
  )
}
