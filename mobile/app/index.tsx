import { Wrapper } from '@/components'
import { TText } from '@/components/ui'
import Create from '@/features/savings/fixed/Create'
import ViewFixed from '@/features/savings/fixed/View'
import { Link } from 'expo-router'

export default function HomeScreen() {
  return (
    <Wrapper>
      <Link href={'/home'}>
        <TText>Home Page</TText>
      </Link>
      <ViewFixed />
    </Wrapper>
  )
}
