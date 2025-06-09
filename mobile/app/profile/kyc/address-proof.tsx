import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'

export default function Page() {
  return (
    <>
      <HeaderBar title="Upload proof of Address" />
      <Wrapper>
        <InputText label="Proof" />
        <InputButton title="Submit" />
      </Wrapper>
    </>
  )
}
