import React from 'react'
import { AppStores } from 'src/lib/zustand'

import FiatTxn from './FiatTxn'
import HistoryTabs from './tabs'
import WalletTransactions from './WalletTrans'

export default function TransactionHistory() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full flex flex-col items-center justify-center">
      <HistoryTabs />
      {store.historyTab === 'ALL' ? <WalletTransactions /> : <FiatTxn />}
    </div>
  )
}
