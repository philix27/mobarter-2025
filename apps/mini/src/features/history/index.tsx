import React from 'react'

import HistoryTabs from './tabs'

export default function TransactionHistory() {
  return (
    <div className="w-full flex flex-col items-center justify-center">
      <HistoryTabs />
      <div>History Page </div>
      <div>Crypto Transaction </div>
      <div>Airtime Transaction </div>
      <div>Swap Transaction </div>
      <div>Others Transaction </div>
    </div>
  )
}
