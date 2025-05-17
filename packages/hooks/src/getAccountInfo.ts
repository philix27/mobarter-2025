import axios from 'axios'

export type IAccountInfo = {
  account_name: string
  account_number: string
  bank_code: string
  Bank_name: string
  status: string
  execution_time: string
}

export async function getAccountInfo(account_number: string, bank_code: string) {
  const res = await axios.get(`/api/account-info`, {
    params: {
      bank_code,
      account_number,
    },
  })
  return res.data as IAccountInfo
}
