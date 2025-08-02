import { NotFound } from '@/src/components/ComingSoon'
import { Spinner } from '@/src/components/Spinner'
import { TileSimple } from '@/src/components/TileSimple'
import { useQuery } from '@apollo/client'
import { QueryResponse, Transactions_GetAllDocument } from '@/src/api'
import React from 'react'

export default function FiatTxn() {
  const { data, loading, error } = useQuery<QueryResponse<'transactions_getAll'>>(
    Transactions_GetAllDocument,
    {
      variables: { input: {} },
    }
  )

  if (loading) return <Spinner />
  if (error) return <div>Error...</div>

  const { transactions_getAll } = data!
  const gt0 = transactions_getAll.length > 0

  if (!gt0) {
    return <NotFound text="No record found" />
  }

  return (
    <div className="w-full">
      {transactions_getAll.map((val, i) => (
        <TileSimple key={i} title={val.amount.toString()} desc={val.category} />
      ))}
    </div>
  )
}
