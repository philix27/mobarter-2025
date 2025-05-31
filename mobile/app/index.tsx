import { Wrapper } from '@/components'
import { TText } from '@/components/ui'
import ViewFixed from '@/features/savings/fixed/View'
import { Link } from 'expo-router'
import Create from '@/features/savings/fixed/Create'
import { ethers } from 'ethers'

export default function HomeScreen() {
  return (
    <Wrapper>
      <Link href={'/wallet'}>
        <TText>Home Page</TText>
      </Link>

      {/* <ViewFixed /> */}
    </Wrapper>
  )
}
