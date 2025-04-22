import React from 'react'
import { AppStores } from 'src/lib/zustand'

import HistoryTabs from './tabs'
import WalletTransactions from './transactions/WalletTrans'
import { NotFound } from '@/src/components/ComingSoon'

export default function TransactionHistory() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full flex flex-col items-center justify-center">
      <HistoryTabs />
      {store.historyTab === 'ALL' ? <WalletTransactions /> : <NotFound text="No record found" />}
    </div>
  )
}
