import { Wrapper } from '@/components/layout'
import { useContext } from 'react'
import { AppStores } from '@/lib/zustand'
import { Collapsible, Row } from '@/components'
import { ThemeContext } from '@/lib/providers'
import Personal from './Personal'
import TWInfo from './TWInfo'
import BankInfo from './BankInfo'
import { router } from 'expo-router'

export default function ProfileScreen() {
  const store = AppStores.useUserInfo()
  const { toggleTheme } = useContext(ThemeContext)

  return (
    <Wrapper>
      {/* <Collapsible title={'Personal Info'}>
        <TWInfo />
      </Collapsible> */}
      <Collapsible title={'KYC'}>
        <Personal />
      </Collapsible>
      <Collapsible title={'Bank'}>
        <BankInfo />
      </Collapsible>
      <Row
        title="Bank accounts"
        onClick={() => {
          router.push('/bank')
        }}
      />
    </Wrapper>
  )
}
