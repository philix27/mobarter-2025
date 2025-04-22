import { useQuery } from '@apollo/client'
import { BankAccount_GetAllDocument, QueryResponse } from '@repo/api'
import React from 'react'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import { NotFound } from '@/src/components/ComingSoon'
import { Spinner } from '@/src/components/Spinner'

export default function ListAccounts() {
  const store = AppStores.useAdvert()
  const { data, loading, error } = useQuery<QueryResponse<'bankAccount_getAll'>>(
    BankAccount_GetAllDocument,
    {
      pollInterval: 5000,
    }
  )

  if (loading)
    return (
      <div className="h-[70vh]">
        <Spinner />
      </div>
    )
  if (error) return <NotFound text="No Back Account record found" />
  return (
    <div className="w-full  no-scrollbar">
      {data && data.bankAccount_getAll.length > 0 ? (
        data.bankAccount_getAll.map((bank, i) => (
          <div
            key={i}
            className={cn(
              `w-full mb-2 flex 
            items-center justify-between
            bg-background px-4 py-2 rounded-md border
            border-background
            `,
              bank.account_no === store.accountNo && 'border-primary '
            )}
            onClick={() => {
              store.update({
                accountName: bank.account_name,
                accountNo: bank.account_no,
                bankName: bank.bank_name,
              })
            }}
          >
            <p>{bank.account_name}</p>

            <div className="flex flex-col items-end justify-end gap-y-2">
              <p className="text-muted">{bank.bank_name}</p>
              <p className="">{bank.account_no}</p>
            </div>
          </div>
        ))
      ) : (
        <div className="flex items-center justify-center h-full flex-col my-5">
          <p>No Bank Account Found</p>
        </div>
      )}
    </div>
  )
}
