import axios from 'axios'

import { ITransactions } from './type'

export async function getTxHistory() {
  // export async function getTxHistory(address: string) {
  // if (!address) throw new Error('Gempage')

  const res = await axios.get('https://explorer.celo.org/api', {
    params: {
      module: 'account',
      action: 'txlist',
      address: '0xc8B665D6fb92ddc395BA6CfBf451058053F475Ae',
      // address: address,
      startblock: 0,
      endblock: 99999999,
      sort: 'desc',
    },
  })

  console.log('Result of getTx:', res)
  return res.data as ITransactions
}
