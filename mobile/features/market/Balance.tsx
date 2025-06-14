import { useGetTokenBalance } from '@/api'
import { TView } from '@/components/ui'
import { useColor } from '@/hooks/useColor'
import { useAddress } from '@/lib/zustand/web3/hooks'
import React from 'react'
import { Text } from 'react-native'

export default function Balance() {
  const appColor = useColor()
  const addr = useAddress()

  const { data, isLoading } = useGetTokenBalance(addr, 'NG')

  if (isLoading) {
    return <TView />
  }
  return (
    <TView
      style={{
        marginBottom: 10,
        // backgroundColor: appColor.primary,
        width: '100%',
        borderRadius: 20,
        // padding: 20,
        height: 100,
        alignItems: 'center',
        justifyContent: 'center',
      }}
    >
      <Text style={{ fontSize: 34, color: appColor.text, fontWeight: 600 }}>{data} USD</Text>
      <Text
        style={{
          fontSize: 17,
          color: appColor.muted,
          fontWeight: 400,
          marginTop: 5,
        }}
      >
        ~ {data! * 1600} NGN
      </Text>
    </TView>
  )
}
