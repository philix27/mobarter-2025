import { HeaderBar } from '@/components/layout/Header'
import { Wrapper } from '@/components'
import { InputButton, InputText } from '@/components/forms'

export default function Page() {
  return (
    <>
      <HeaderBar title="Verify NIN" />
      <Wrapper>
        <InputText label="NIN" />
        <InputButton title="Submit" />
      </Wrapper>
    </>
  )
}
