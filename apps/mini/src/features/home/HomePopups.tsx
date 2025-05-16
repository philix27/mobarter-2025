
import { AppStores } from 'src/lib/zustand'

import SelectNetwork from '../others/SelectNetwork'
import BottomModal from '@/src/components/BottomModal'

export default function HomePopups() {
  const store = AppStores.useSettings()
  const currentTab = store.homeBtmSheet
  return (
    <>
      <BottomModal
        showSheet={currentTab === 'SELECT_NETWORK'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SelectNetwork />
      </BottomModal>
    </>
  )
}
