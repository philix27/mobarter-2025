import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'

const formSchema = z.object({
  firstName: z.string().min(1, 'Required').max(25),
  lastName: z.string().min(1, 'Required').max(25),
  middleName: z.string().max(25).optional(),
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
      <HeaderBar title="Names" />
      <Wrapper style={{rowGap: 20}}>
        <InputText
          label="First name"
          onChangeText={(e) => {
            f.setValue('firstName', e)
          }}
          value={f.getValues('firstName')}
          error={f.formState.errors.firstName && f.formState.errors.firstName.message}
        />
        <InputText
          label="Last name"
          onChangeText={(e) => {
            f.setValue('lastName', e)
          }}
          value={f.getValues('lastName')}
          error={f.formState.errors.lastName && f.formState.errors.lastName.message}
        />
        <InputText
          label="Middle name (optional)"
          onChangeText={(e) => {
            f.setValue('middleName', e)
          }}
          value={f.getValues('middleName')}
          error={f.formState.errors.middleName && f.formState.errors.middleName.message}
        />
        <InputButton title="Submit" style={{ width: '50%' }} onPress={f.handleSubmit(onSubmit)} />
      </Wrapper>
    </>
  )
}
