import axios from 'axios'

export async function getTxHistory(address: string) {
  const res = await axios.get(`/api/history/${address}`)
  return res.data as ITransactions
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
