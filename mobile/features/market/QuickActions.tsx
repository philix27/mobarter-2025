import { TView } from '@/components/ui/TView'
import { useColor } from '@/hooks/useColor'
import React, { useRef } from 'react'
import { Feather, Ionicons } from '@expo/vector-icons'
import { BottomSheet } from '@/components/layout/BottomSheet'
import IconRound from '@/components/ui/IconRound'
import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import WithdrawModal from './WithdrawModal'
import WalletQRCode from './WalletQRCode'
import { router } from 'expo-router'

export default function QuickActions() {
  const appColor = useColor()

  const withdrawalSheet = useRef<RBSheetRef>()
  const walletSheet = useRef<RBSheetRef>()

  return (
    <>
      <TView
        style={{
          marginVertical: 10,
          display: 'flex',
          flexDirection: 'row',
          justifyContent: 'space-around',
          alignItems: 'center',
          backgroundColor: appColor.background,
        }}
      >
        <IconRound
          title="Send"
          onPress={() => {
            router.push('/send-crypto')
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

        <BottomSheet ref={withdrawalSheet!} height={350}>
          <WithdrawModal />
        </BottomSheet>

        <BottomSheet ref={walletSheet!}>
          <WalletQRCode />
        </BottomSheet>
      </TView>
    </>
  )
}
{
  /* <ReceiveWallet /> */
}
