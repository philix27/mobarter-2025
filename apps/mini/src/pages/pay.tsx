// import ComingSoon from 'src/components/ComingSoon'
import Wrapper from 'src/components/wrapper/Wrapper'
import SendToBank from '../features/others/SendToBank'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <SendToBank />
    </Wrapper>
  )
}
