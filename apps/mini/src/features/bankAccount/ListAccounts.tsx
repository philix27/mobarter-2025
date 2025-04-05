import { useQuery } from '@apollo/client'
import { BankAccount_GetAllDocument, QueryResponse } from '@repo/api'
import React from 'react'

export default function ListAccounts() {
  const { data, loading, error } = useQuery<QueryResponse<'bankAccount_getAll'>>(
    BankAccount_GetAllDocument,
    {
      pollInterval: 5000,
    }
  )

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error...</div>
  return (
    <div className="w-full  no-scrollbar">
      {data &&
        data.bankAccount_getAll.map((ad, i) => (
          <div
            key={i}
            className="w-full mb-1 flex items-center justify-between bg-background px-4 py-2 rounded-md"
          >
            <p>{ad.account_name}</p>

            <div className="flex flex-col items-end justify-end gap-y-2">
              <p className="text-muted">{ad.bank_name}</p>
              <p className="">{ad.account_no}</p>
            </div>
          </div>
        ))}
    </div>
  )
}
