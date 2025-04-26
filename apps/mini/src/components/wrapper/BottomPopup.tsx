import { useRouter } from 'next/router'
import { GiSpeedometer } from 'react-icons/gi'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import QRCode from 'react-qr-code'
import { useAppContext } from 'src/Root/context'
import BottomModal from 'src/components/BottomModal'
import { Button } from 'src/components/Button'
import { TileSimple } from 'src/components/TileSimple'
import { Label } from 'src/components/comps'
import { copyTextToClipboard, shortString } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import Airtime from '../../features/others/Airtime'
import SelectCountry from '../../features/others/SelectCountry'
import SelectNetwork from '../../features/others/SelectNetwork'
import SendCrypto from '../../features/others/SendCrypto'
import SendToBank from '../../features/others/SendToBank'

export default function BottomPopup() {
  const store = AppStores.useSettings()
  const currentTab = store.homeBtmSheet
  const { evmAddress } = useAppContext()
  const router = useRouter()
  return (
    <>
      <BottomModal
        title="Wallet address"
        showSheet={currentTab === 'WALLET'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <div className="w-full items-center justify-center flex flex-col">
          <QRCode
            size={256}
            style={{ height: 'auto' }}
            value={evmAddress || 'Not found'}
            viewBox={`0 0 256 256`}
            enableBackground={'#fff'}
            className="w-[75%] rounded-md"
          />
          <Label>{shortString(evmAddress, 10)}</Label>
          <Button className="mt-3" onClick={() => copyTextToClipboard(evmAddress!)}>
            Copy Address
          </Button>
        </div>
      </BottomModal>

      <BottomModal
        title="Send crypto"
        showSheet={currentTab === 'SEND_CRYPTO'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SendCrypto />
      </BottomModal>

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

      <BottomModal
        title="Purchase Airtime"
        showSheet={currentTab === 'AIRTIME'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <Airtime />
      </BottomModal>

      <BottomModal
        title="Send to Bank Account"
        showSheet={currentTab === 'SEND_TO_BANK'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SendToBank />
      </BottomModal>
    </>
  )
}
