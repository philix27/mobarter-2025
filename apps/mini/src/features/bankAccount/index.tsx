import React, { useState } from 'react'
import BottomModal from 'src/components/BottomModal'
import { Button } from 'src/components/Button'

import { AddBankAccount } from './AddAccount'
import ListAccounts from './ListAccounts'

export default function BankAccount() {
  const [showBankAccount, setShowBankAccount] = useState(false)
  return (
    <div className="w-full flex flex-col items-center justify-center">
      <ListAccounts />
      <Button
        className="mt-4"
        onClick={() => {
          setShowBankAccount(true)
        }}
      >
        ADD
      </Button>

      <BottomModal
        title="Add Bank Account"
        showSheet={showBankAccount}
        onClose={() => {
          setShowBankAccount(false)
        }}
      >
        <AddBankAccount />
      </BottomModal>
    </div>
  )
}
