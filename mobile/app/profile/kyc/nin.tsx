import { HeaderBar } from '@/components/layout/Header'
import { toast, Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { useState } from 'react'
import { Api } from '@/graphql'

export default function Page() {
  const [mutate] = Api.useKyc_addNin()
  const [data, setData] = useState<{ value: string; error?: string }>()

  const onSubmit = async () => {
    if (data === undefined) {
      setData({
        value: '',
        error: 'NIN needed',
      })
      return
    }

    await mutate({
      variables: {
        input: {
          nin: data!.value,
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
      <HeaderBar title="Verify NIN" />
      <Wrapper>
        <InputText
          label="NIN"
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
