import React from 'react'
import axios from 'axios'
import { useQuery } from '@tanstack/react-query'
import { LoadingIndicator, TText } from '@/components/ui'

export default function WalletTransactions() {
  const { data, isLoading } = useQuery({
    queryKey: ['txns'],
  })

  if (isLoading) {
    return <LoadingIndicator />
  }

  // return <RenderComponents components={data.txnWallet} />
  return <TText>Orders Transactions</TText>
}

async function getTxn(address: string) {
  const response = await axios.get('https://explorer.celo.org/api', {
    params: {
      module: 'account',
      action: 'txlist',
      address: address,
      startblock: 0,
      endblock: 99999999,
      sort: 'desc',
    },
    headers: {
      Accept: '*/*',
    },
  })

  return response.data
}

export interface ITransactions {
  message: string
  result: ITransactionsResult[]
  status: string
}

export interface ITransactionsResult {
  blockHash: string
  blockNumber: string
  confirmations: string
  contractAddress: string
  cumulativeGasUsed: string
  from: string
  gas: string
  gasPrice: string
  gasUsed: string
  hash: string
  input: string
  isError: string
  nonce: string
  timeStamp: string
  to: string
  transactionIndex: string
  txreceipt_status: string
  value: string
}
