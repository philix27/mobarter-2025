import { TView } from '@/components/ui'
import { useColor } from '@/hooks/useColor'
import { useAddress } from '@/lib/zustand/web3/hooks'
import { useQuery } from '@tanstack/react-query'
import React from 'react'
import { Text } from 'react-native'
import { useCountries } from '@/lib/zustand/countries'
import { api } from '@/api/instance'

const useGetTokenBalance = () => {
  const address = useAddress()
  const country = useCountries()

  return useQuery({
    queryKey: ['useGetTokenBalance'],
    queryFn: async () => {
      const res = await api.get(`/api/tokens/total-balance`, {
        params: { address, country: country.activeIso },
      })

      // const resBalance = await getBalance({
      //   address,
      //   tokenAddress: params.tokenAddr,
      //   chianId: params.chainId,
      // })
      return res.data as number
    },
  })
}

export default function Balance() {
  const appColor = useColor()

  const { data, isLoading } = useGetTokenBalance()

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
        ~ {isLoading ? '*.**' : data! * 1600} NGN
      </Text>
    </TView>
  )
}
