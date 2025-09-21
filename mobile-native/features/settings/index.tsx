import { BtmSheet, Wrapper } from '@/components/layout'
import { Row } from '@/components'
import { useContext } from 'react'
import {
  FontAwesome5,
  Ionicons,
  MaterialCommunityIcons,
  MaterialIcons,
  SimpleLineIcons,
} from '@expo/vector-icons'
import { AppStores } from '@/lib/zustand'
import { Collapsible } from '@/components'
import { router } from 'expo-router'
import { ThemeContext } from '@/lib/providers'
import { SectionTitle } from './Card'
import Socials from './Socials'
import Docs from './Docs'
import SelectCountry from '../country/Comp'
import SelectPaymentToken from './SelectPaymentToken'

export default function SettingsScreen() {
  const store = AppStores.useUserInfo()
  const { toggleTheme } = useContext(ThemeContext)
  const socialSheet = BtmSheet.useRef()
  const docsSheet = BtmSheet.useRef()
  return (
    <>
      <Row
        title="Bank accounts"
        desc="Manage bank account details"
        icon={<MaterialCommunityIcons name="bank-outline" size={24} color="#fff" />}
        bgBlank
        onClick={() => {
          router.push('/bank')
        }}
      />
      <SelectCountry />
      <SelectPaymentToken />
      <Row
        title={'Support'}
        bgBlank
        desc={'Contact customer support'}
        icon={<MaterialIcons name="support-agent" size={24} color="#fff" />}
      />
      <Row
        title={'Theme'}
        bgBlank
        desc={'Manage appearance'}
        icon={<Ionicons name="color-palette-outline" size={24} color="#fff" />}
        onClick={() => {
          toggleTheme()
        }}
      />

      <SectionTitle title={'Others'} />
      <Row
        title={'Community'}
        bgBlank
        desc={'Social Media Pages'}
        icon={<MaterialCommunityIcons name="account-group-outline" size={24} color="#fff" />}
        onClick={() => {
          socialSheet.current?.open()
        }}
      />
      <BtmSheet.Modal ref={socialSheet!}>
        <Socials />
      </BtmSheet.Modal>
      <Row
        title={'Links'}
        bgBlank
        desc={'Privacy and Legal Agreements'}
        icon={<SimpleLineIcons name="docs" size={20} color="#fff" />}
        onClick={() => {
          docsSheet.current?.open()
        }}
      />
      <BtmSheet.Modal ref={docsSheet!}>
        <Docs />
      </BtmSheet.Modal>

      <Row
        title={'Learn'}
        desc={'Tutorials and Guide on Mobarter'}
        bgBlank
        icon={<FontAwesome5 name="readme" size={20} color="#fff" />}
        onClick={() => {
          router.push('/settings/learn')
        }}
      />
      <SectionTitle title={'Danger'} />
      <Row
        title={'Logout'}
        bgBlank
        desc={'Close app'}
        icon={<MaterialIcons name="logout" size={24} color="#fff" />}
        onClick={() => {
          store.clear()
          router.push('/')
        }}
      />
    </>
  )
}
