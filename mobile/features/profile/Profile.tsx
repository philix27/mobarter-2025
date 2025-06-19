import { Wrapper } from '@/components/layout'
import { useContext } from 'react'
import { AppStores } from '@/lib/zustand'
import { Collapsible, Row, TView } from '@/components'
import { ThemeContext } from '@/lib/providers'
import Personal from '../settings/Personal'
import TWInfo from '../settings/TWInfo'
import BankInfo from '../settings/BankInfo'
import { router } from 'expo-router'
import { FlatTabs } from '@/components/FlatTabs'
import { useProfile } from './zustand'
import ProfileTab from './ProfileTab'
import SettingsScreen from '../settings'

export default function ProfileScreen() {
  const store = useProfile()
  return (
    <Wrapper>
      <FlatTabs
        data={[
          {
            title: 'Profile',
            key: 'PROFILE',
            onPress: () => {
              store.update({ activeTab: 'PROFILE' })
            },
            isActive: store.activeTab !== 'SETTINGS',
          },
          {
            title: 'Settings',
            key: 'SETTINGS',
            onPress: () => {
              store.update({ activeTab: 'SETTINGS' })
            },
            isActive: store.activeTab === 'SETTINGS',
          },
        ]}
      />
      {/* <Collapsible title={'Personal Info'}>
        <TWInfo />
      </Collapsible> */}
      {/* <Collapsible title={'KYC'}>
        <Personal />
      </Collapsible> */}
      <TView style={{ paddingTop: 10, width: '100%' }}>
        {store.activeTab === 'PROFILE' ? <ProfileTab /> : <SettingsScreen />}
      </TView>
    </Wrapper>
  )
}
