import axios from 'axios'

import { ITransactions } from './type'

export async function getTxHistory(address: string) {
  const res = await axios.get(`/api/history/${address}`)
  return res.data as ITransactions
}
