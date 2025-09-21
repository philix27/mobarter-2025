import { TView } from '@/components'
import { useColor } from '@/hooks/useColor'
import React from 'react'
import { Text } from 'react-native'

import { AppStores, client } from '@/lib'
import { celo } from 'thirdweb/chains'
import { getBalance } from 'thirdweb/extensions/erc20'
import { formatTokenBalance } from './Balance/getBalance'
import { useQuery } from '@tanstack/react-query'
import { useAddress } from '@/hooks/web3/hooks'

export default function Balance() {
  const appColor = useColor()
  const address = useAddress()

  // getBalance()
  const { data, isLoading, isError } = useQuery({
    queryKey: ['balance', address],
    queryFn: async () => {
      const contract = '0x471EcE3750Da237f93B8E339c536989b8978a438' as `0x${string}`
      const balance = await getBalance({
        address: address!,
        contract: { address: contract, chain: celo, client: client },
      })
      return balance
    },
  })

  // const { data, isLoading, isError } = useWalletBalance({
  //   chain: celo,
  //   address: account.address,
  //   client,
  // })
  const store = AppStores.useCountries()
  if (isError) {
    return <TView>Error loading balance</TView>
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
      <Text style={{ fontSize: 34, color: appColor.text, fontWeight: 600 }}>
        {formatTokenBalance(parseInt(data?.value?.toString() ?? '0'))} CELO
      </Text>
      <Text
        style={{
          fontSize: 17,
          color: appColor.muted,
          fontWeight: 400,
          marginTop: 5,
        }}
      >
        ~ {isLoading ? '*.**' : parseFloat(data?.value?.toString() ?? '0') * 1600}
        {store.activeCountry?.currencySymbol}
      </Text>
    </TView>
  )
}
