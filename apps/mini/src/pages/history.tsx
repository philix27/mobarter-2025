import Wrapper from 'src/components/wrapper/Wrapper'
import TransactionHistory from 'src/features/history'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <TransactionHistory />
    </Wrapper>
  )
}
