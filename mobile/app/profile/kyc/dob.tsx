import { HeaderBar } from '@/components/layout/Header'
import { toast, Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { useState } from 'react'
import { Api } from '@/graphql'

export default function Page() {
  const [mutate] = Api.useKyc_addDob()
  const [data, setData] = useState<{ value: string; error?: string }>()

  const onSubmit = async () => {
    if (data === undefined) {
      setData({
        value: '',
        error: 'Date of Birth needed',
      })
      return
    }

    await mutate({
      variables: {
        input: {
          dob: data!.value,
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
      <HeaderBar title="Date of Birth" />
      <Wrapper>
        <InputText
          label="Date of Birth"
          onChangeText={(e) => {
            setData({
              value: e,
              error: '',
            })
          }}
          value={data?.value}
          error={data?.error}
        />
        <InputButton title="Submit" onPress={onSubmit} />
      </Wrapper>
    </>
  )
}
