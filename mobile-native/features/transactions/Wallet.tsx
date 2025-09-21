import React from 'react'
import axios from 'axios'
import { useQuery } from '@tanstack/react-query'
import { Row, TText, TView } from '@/components'
import AppHooks from '@/hooks'
import { env } from '@/lib/env'
import { ITransactionsResponse } from './types'
import { shortenAddress, toEther } from 'thirdweb/utils'

const useTxnHistory = (props: { limit: number }) => {
  const { limit } = props
  const address = AppHooks.useAddress()
  return useQuery({
    queryKey: [`txxn ${limit}`],
    queryFn: async () => {
      const response = await axios.get(
        `https://insight.thirdweb.com/v1/wallets/${address}/transactions?chain_id=${42220}&chain_id=${8453}`,
        {
          params: {
            filter_block_timestamp_gte: 1743150510,
            limit: props.limit,
            clientId: env.THIRDWEB_CLIENT_ID,
          },
          headers: {
            'Content-Type': 'application/json',
          },
        }
      )

      return response.data as ITransactionsResponse
    },
  })
}

const chainName = {
  '42220': 'CELO',
  '8453': 'ETH',
}

export default function WalletTransactions(props: { chainId: string }) {
  const { data, isLoading } = useTxnHistory({ limit: 30 })
  const address = AppHooks.useAddress()

  const getAddr = (from: string, to: string) => {
    const _from = from
    const _to = to
    const addr = address!

    if (_from === addr!) return shortenAddress(_to)
    if (_to === addr!) return shortenAddress(_from)
    return shortenAddress(_from)
  }
  return (
    <TView style={{ width: '100%', paddingBottom: 50 }}>
      {data?.data
        .filter((item) => item.chain_id === props.chainId)
        .map((txn, index) => (
          <Row
            key={index}
            title={getAddr(txn.from_address, txn.to_address).toUpperCase()}
            desc={address!.toUpperCase() === txn.from_address.toUpperCase() ? 'Sent' : 'Received'}
            trailing={
              <TText style={{ fontSize: 12, fontWeight: '600' }}>
                {toEther(BigInt(txn.value))}
              </TText>
            }
          />
        ))}
    </TView>
  )
}
// {`https://celoscan.io/tx/${transaction.transactionHash}`}
