import { useQuery } from '@tanstack/react-query'

import { getAccountInfo } from '@/src/lib/server'
import { AppStores } from '@/src/lib/zustand'

export function GetAccountName(props: { accountNumber: string; bankCode: string }) {
  const store = AppStores.useSendToBank()
  const { data, isLoading, error } = useQuery({
    queryKey: ['getAccountName-' + props.accountNumber + '-' + props.bankCode],
    queryFn: async () => {
      const res = await getAccountInfo(props.accountNumber, props.bankCode)
      store.update({ accountName: res.account_name })
      return res
    },
  })
  if (isLoading) return <>...</>
  if (error) {
    // store.update({ accountName: undefined })
    return <>Not found</>
  }
  if (data) {
    // store.update({ accountName: data.account_name })
    return <>{data.account_name}</>
  }
  return <>{''}</>
}
