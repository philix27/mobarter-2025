import Wrapper from 'src/components/wrapper/Wrapper'
import SendFiat from 'src/features/send/fiat'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <SendFiat />
    </Wrapper>
  )
}
