import { BottomModal } from '@repo/ui'
import { AppStores } from 'src/lib/zustand'

import SelectNetwork from '../others/SelectNetwork'

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
