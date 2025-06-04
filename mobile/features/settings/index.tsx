import { Wrapper } from '@/components/layout'
import { Row } from '@/components/ui'
import { useContext } from 'react'
import { FontAwesome5, Ionicons, MaterialIcons } from '@expo/vector-icons'
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

  return (
    <Wrapper>
      <Collapsible title={'Application'}>
        <SelectCountry />
        <SelectPaymentToken />
        <Row
          title={'Support'}
          desc={'Contact customer support'}
          icon={<MaterialIcons name="support-agent" size={24} color="#fff" />}
        />
        <Row
          title={'Theme'}
          desc={'Manage appearance'}
          icon={<Ionicons name="color-palette-outline" size={24} color="#fff" />}
          onClick={() => {
            toggleTheme()
          }}
        />
      </Collapsible>

      <Collapsible title={'Socials'}>
        <Socials />
      </Collapsible>
      <Collapsible title={'Links'}>
        <Docs />
      </Collapsible>

      <SectionTitle title={'Others'} />
      <Row
        title={'Learn'}
        desc={'Tutorials and Guide on Mobarter'}
        icon={<FontAwesome5 name="readme" size={20} color="#fff" />}
        onClick={() => {
          router.push('/learn')
        }}
      />
      <Row
        title={'Logout'}
        desc={'Close app'}
        icon={<MaterialIcons name="logout" size={24} color="#fff" />}
        onClick={() => {
          store.clear()
          router.push('/')
        }}
      />
    </Wrapper>
  )
}
