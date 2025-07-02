import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { useState } from 'react'
import { Api } from '@/graphql'
import { useResponse } from '@/lib/providers'

export default function Page() {
  const [mutate] = Api.useKyc_addNin()
  const [data, setData] = useState<{ value: string; error?: string }>()
  const response = useResponse()

  const onSubmit = async () => {
    if (data === undefined) {
      setData({
        value: '',
        error: 'NIN needed',
      })
      return
    }
    response.showLoading(true)
    await mutate({
      variables: {
        input: {
          nin: data!.value,
        },
      },
      onCompleted: () => {
        response.showSuccess('NIN Saved')
      },
      onError: () => {
        response.showError('Oops, could not save')
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
        <InputButton title="Submit" style={{ marginTop: 20 }} onPress={onSubmit} />
      </Wrapper>
    </>
  )
}
