import React, { useState } from 'react'
import BottomModal from 'src/components/BottomModal'
import { AppStores } from 'src/lib/zustand'

import { AdsRow, Label, Line } from '../../components/comps'

import { AddBankAccount } from './AddAccount'
import ListAccounts from './ListAccounts'

export default function BankAccount() {
  const [showBankAccount, setShowBankAccount] = useState(false)
  const [showBankAccounts, setShowBankAccounts] = useState(false)
  const store = AppStores.useAdvert()
  return (
    <>
      <Label>Payment Method</Label>
      <div className="bg-card rounded-md px-3 py-1 w-full">
        <AdsRow
          text={store.accountNo ? store.bankName : 'No account'}
          text2={store.accountNo ? store.accountNo : 'Select'}
          text2options={{
            active: true,
            onClick: () => {
              setShowBankAccounts(true)
            },
          }}
        />
        <Line />
        <AdsRow
          text="Bank account"
          text2={'ADD'}
          text2options={{
            active: true,
            onClick: () => {
              setShowBankAccount(true)
            },
          }}
        />
      </div>
      <BottomModal
        title="Add Bank Account"
        showSheet={showBankAccount}
        onClose={() => {
          setShowBankAccount(false)
        }}
      >
        <AddBankAccount />
      </BottomModal>

      <BottomModal
        title="Bank Accounts"
        showSheet={showBankAccounts}
        onClose={() => {
          setShowBankAccounts(false)
        }}
      >
        <ListAccounts />
      </BottomModal>
    </>
  )
}
