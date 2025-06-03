import { TView } from '@/components/ui/TView'
import { useColor } from '@/hooks/useColor'
import React, { useRef } from 'react'
import { Feather, Ionicons } from '@expo/vector-icons'
import { BtmSheet } from '@/components/layout/BottomSheet'
import IconRound from '@/components/ui/IconRound'
import WithdrawModal from './WithdrawModal'
import WalletQRCode from './WalletQRCode'
import { router } from 'expo-router'

export default function QuickActions() {
  const appColor = useColor()

  const withdrawalSheet = BtmSheet.useRef()
  const walletSheet = BtmSheet.useRef()

  return (
    <>
      <TView
        style={{
          marginVertical: 10,
          display: 'flex',
          flexDirection: 'row',
          justifyContent: 'space-around',
          alignItems: 'center',
          width: '100%',
          backgroundColor: appColor.background,
        }}
      >
        <IconRound
          title="Send"
          onPress={() => {
            router.push('/services/send-crypto')
          }}
        >
          <Feather name="send" size={22} color={'#fff'} />
        </IconRound>
        <IconRound
          title="Buy/Sell"
          onPress={() => {
            withdrawalSheet.current?.open()
          }}
        >
          <Ionicons name="swap-vertical" size={22} color="#fff" />
        </IconRound>
        <IconRound
          title="Receive"
          onPress={() => {
            walletSheet.current?.open()
          }}
        >
          <Ionicons name="wallet-outline" size={22} color={'#fff'} />
        </IconRound>

        <BtmSheet.Modal ref={withdrawalSheet!} height={350}>
          <WithdrawModal
            onClick={() => {
              withdrawalSheet.current?.close()
            }}
          />
        </BtmSheet.Modal>

        <BtmSheet.Modal ref={walletSheet!}>
          <WalletQRCode />
        </BtmSheet.Modal>
      </TView>
    </>
  )
}
{
  /* <ReceiveWallet /> */
}
