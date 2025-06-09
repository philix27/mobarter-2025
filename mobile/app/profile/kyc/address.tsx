import { HeaderBar } from '@/components/layout/Header'
import { toast, Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { SelectCountryCard } from '@/features/country'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { Api, Country } from '@/graphql'
import { useCountries } from '@/lib/zustand/countries'

const formSchema = z.object({
  state: z.string().min(2, 'Required').max(100),
  street: z.string().min(2, 'Required').max(100),
  homeAddress: z.string().max(100),
})

type IFormData = z.infer<typeof formSchema>
export default function Page() {
  const [mutate] = Api.useKyc_addAddressInfo()
  const countryStore = useCountries()
  const f = useForm<IFormData>({
    resolver: zodResolver(formSchema),
  })

  const onSubmit = async (formData: IFormData) => {
    await mutate({
      variables: {
        input: {
          country: countryStore.activeCountry!.isoName as Country,
          houseAddress: formData.homeAddress,
          state: formData.state,
          street: formData.street,
        },
      },
      onCompleted: () => {
        toast.success('Submitted Successfully')
      },
      onError: () => {
        toast.error('Not sumitted', 'Check your network connection')
      },
    })
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
