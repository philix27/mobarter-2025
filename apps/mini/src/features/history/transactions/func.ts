import axios from 'axios'

import { ITransactions } from './type'

export type IAccountInfo = {
  account_name: string
  account_number: string
  bank_code: string
  Bank_name: string
  status: string
  execution_time: string
}

export async function getTxHistory(address: string) {
  const res = await axios.get(`/api/history/${address}`)
  return res.data as ITransactions
}

export async function getAccountInfo(account_number: string, bank_code: string) {
  const res = await axios.get(`/api/account-info`, {
    params: {
      bank_code,
      account_number,
    },
  })
  return res.data  as IAccountInfo
}
