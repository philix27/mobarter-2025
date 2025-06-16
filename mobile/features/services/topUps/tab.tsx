import { FlatTabs } from '@/components/FlatTabs'
import { useTopUps } from './zustand'

export function TopUpTabs() {
  const store = useTopUps()

  return (
    <FlatTabs
      data={[
        {
          title: 'Airtime',
          key: 'create',
          onPress: () => {
            store.update({ activeTab: 'AIRTIME' })
          },
          isActive: store.activeTab === 'AIRTIME',
        },
        {
          title: 'Data Bundles',
          key: 'bundle',
          onPress: () => {
            store.update({ activeTab: 'BUNDLE' })
          },
          isActive: store.activeTab === 'BUNDLE',
        },
        {
          title: 'Data Plan',
          key: 'plan',
          onPress: () => {
            store.update({ activeTab: 'DATA_PLAN' })
          },
          isActive: store.activeTab === 'DATA_PLAN',
        },
      ]}
    />
  )
}
