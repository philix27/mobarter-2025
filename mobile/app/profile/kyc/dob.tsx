import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputDateTime } from '@/components/forms'
import { useState } from 'react'
import { Api } from '@/graphql'
import { useResponse } from '@/lib/providers'

export default function Page() {
  const [mutate] = Api.useKyc_addDob()
  const [data, setData] = useState<{ value: string; error?: string }>()
  const response = useResponse()

  const onSubmit = async () => {
    if (data === undefined) {
      setData({
        value: '',
        error: 'Date of Birth needed',
      })
      return
    }
    response.showLoading(true)
    await mutate({
      variables: {
        input: {
          dob: data!.value,
        },
      },
      onCompleted: () => {
        response.showSuccess('Date of Birth Saved')
      },
      onError: () => {
        response.showError('Oops, could not save')
      },
    })
  }
  return (
    <>
      <HeaderBar title="Date of Birth" />
      <Wrapper>
        <InputDateTime
          label="Date of Birth"
          error={data?.error}
          onChange={(e) => {
            setData({
              value: e,
              error: '',
            })
          }}
        />

        <InputButton title="Submit" style={{ marginTop: 20 }} onPress={onSubmit} />
      </Wrapper>
    </>
  )
}
