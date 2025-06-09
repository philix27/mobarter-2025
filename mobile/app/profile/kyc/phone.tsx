import { HeaderBar } from '@/components/layout/Header'
import { toast, Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { useState } from 'react'

export default function Page() {
  const [data, setData] = useState<{ value: string; error?: string }>()
  const onSubmit = async () => {
    if (data!.error) {
      toast.error('All values needed')
      return
    }
  }
  return (
    <>
      <HeaderBar title="Verify Phone No" />
      <Wrapper>
        <InputText
          label="Phone"
          onChangeText={(e) => {
            setData({
              value: e,
              error: '',
            })
          }}
          value={data?.value}
          error={data?.error}
        />
        <InputButton title="Send OTP" onPress={onSubmit} />
      </Wrapper>
    </>
  )
}
