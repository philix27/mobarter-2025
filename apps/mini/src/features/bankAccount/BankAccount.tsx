import React, { useState } from 'react'
import BottomModal from 'src/components/BottomModal'

import { Label, Line, Row } from '../adverts/comps'

import { AddBankAccount } from './AddAccount'
import ListAccounts from './ListAccounts'

export default function BankAccount() {
  const [showBankAccount, setShowBankAccount] = useState(false)
  const [showBankAccounts, setShowBankAccounts] = useState(false)
  return (
    <>
      <Label>Payment Method</Label>
      <div className="bg-card rounded-md p-3 w-full">
        <Row
          text="Opay"
          text2={'8108850572'}
          text2options={{
            active: true,
            onClick: () => {
              setShowBankAccounts(true)
            },
          }}
        />
        <Line />
        <Row
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
