import { useRouter } from 'next/router'
import { GiSpeedometer } from 'react-icons/gi'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import BottomModal from 'src/components/BottomModal'
import { TileSimple } from 'src/components/TileSimple'

import { AppStores } from '@/src/lib/zustand'

export default function UtilityBottomPopups() {
  const store = AppStores.useSettings()
  const currentTab = store.homeBtmSheet

  const router = useRouter()
  return (
    <>
      <BottomModal
        showSheet={currentTab === 'WITHDRAW'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <div className="w-full">
          <TileSimple
            title={'Instant Withdraw'}
            desc={'Use the best price offering at the moment'}
            icon={GiSpeedometer}
            onClick={async () => {
              await router.push('/instant')
            }}
          />
          <TileSimple
            title={'Marketplace'}
            desc={'Select from our list of verified vendors'}
            icon={IoSwapHorizontalOutline}
            onClick={async () => {
              await router.push('/ads')
            }}
          />
          <div className="h-[50px]" />
        </div>
      </BottomModal>
    </>
  )
}
