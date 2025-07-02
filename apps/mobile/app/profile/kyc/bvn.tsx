import { HeaderBar } from '@/components/layout/Header'
import { toast, Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { useState } from 'react'
import { Api } from '@/graphql'
import { useResponse } from '@/lib/providers'

export default function Page() {
  const [mutate] = Api.useKyc_addBvn()
  const [data, setData] = useState<{ value: string; error?: string }>()
  const response = useResponse()

  const onSubmit = async () => {
    if (data === undefined) {
      setData({
        value: '',
        error: 'BVN number needed',
      })
      return
    }

    if (data.value.length < 10) {
      setData({
        value: data.value,
        error: 'Enter a valid BVN number',
      })
      return
    }
    response.showLoading(true)
    await mutate({
      variables: {
        input: {
          bvn: data!.value,
        },
      },
      onCompleted: () => {
        response.showSuccess('BVN Saved')
      },
      onError: () => {
        response.showError('Oops, could not save')
      },
    })
  }
  return (
    <>
      <HeaderBar title="Verify BVN" />
      <Wrapper>
        <InputText
          label="BVN"
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
