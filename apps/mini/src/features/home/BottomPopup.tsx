import QRCode from 'react-qr-code'
import { useAppContext } from 'src/Root/context'
import BottomModal from 'src/components/BottomModal'
import { Button } from 'src/components/Button'
import { Label } from 'src/components/comps'
import { AppStores } from 'src/lib/zustand'
import { copyTextToClipboard, shortString } from 'src/utils'

import SendCrypto from '../send/crypto'
import SwapModal from '../swap'

export default function BottomPopup() {
  const store = AppStores.useSettings()
  const showWallet = store.homeBtmSheet === 'WALLET'
  const showSendCrypto = store.homeBtmSheet === 'SEND_CRYPTO'
  const showSwap = store.homeBtmSheet === 'SWAP'
  const { evmAddress } = useAppContext()
  return (
    <>
      <BottomModal
        title="Wallet address"
        showSheet={showWallet}
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
        showSheet={showSendCrypto}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SendCrypto />
      </BottomModal>
      <BottomModal
        title="Swap crypto"
        showSheet={showSwap}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SwapModal />
      </BottomModal>
    </>
  )
}
