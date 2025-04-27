import BottomModal from 'src/components/BottomModal'
import { AppStores } from 'src/lib/zustand'

import SelectCountry from '../others/SelectCountry'
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

      <BottomModal
        showSheet={currentTab === 'SELECT_COUNTRY'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SelectCountry />
      </BottomModal>
    </>
  )
}
