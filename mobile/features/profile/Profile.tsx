import { Wrapper } from '@/components/layout'
import { useContext } from 'react'
import { AppStores } from '@/lib/zustand'
import { Collapsible, Row } from '@/components'
import { ThemeContext } from '@/lib/providers'
import Personal from '../settings/Personal'
import TWInfo from '../settings/TWInfo'
import BankInfo from '../settings/BankInfo'
import { router } from 'expo-router'

export default function ProfileScreen() {
  const store = AppStores.useUserInfo()
  const { toggleTheme } = useContext(ThemeContext)

  return (
    <Wrapper>
      {/* <Collapsible title={'Personal Info'}>
        <TWInfo />
      </Collapsible> */}
      {/* <Collapsible title={'KYC'}>
        <Personal />
      </Collapsible> */}
      <Row
        title={'Full names'}
        desc="Name must match documents"
        onClick={() => {
          router.push('/profile/kyc/names')
        }}
      />
      <Row
        title={'DOB'}
        desc="Date of Birth"
        onClick={() => {
          router.push('/profile/kyc/dob')
        }}
      />
      <Row
        title={'BVN'}
        desc="Bank Verification Number"
        onClick={() => {
          router.push('/profile/kyc/bvn')
        }}
      />
      <Row
        title={'NIN'}
        desc="National Identity Number"
        onClick={() => {
          router.push('/profile/kyc/nin')
        }}
      />
      <Row
        title={'Phone'}
        desc="Phone No. Verification"
        onClick={() => {
          router.push('/profile/kyc/phone')
        }}
      />
      <Row
        title="Bank accounts"
        desc="Manage bank account details"
        onClick={() => {
          router.push('/bank')
        }}
      />
    </Wrapper>
  )
}
