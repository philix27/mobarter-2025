import { useQuery } from '@tanstack/react-query'
import dayjs from 'dayjs'
import { ethers } from 'ethers'
import React, { useState } from 'react'
import { useAppContext } from 'src/Root/context'
import BottomModal from 'src/components/BottomModal'
import { Spinner } from 'src/components/Spinner'
import { shortenAddress } from 'src/lib/config/addresses'
import { cn, formatEtherBalance, shortString } from 'src/lib/utils'

import { getTxHistory } from './func'
import { ITransactionsResult } from './type'

export default function WalletTransactions() {
  // const store = AppStores.useUser()
  const [showMore, setShowMore] = useState<{
    data: ITransactionsResult
    show: boolean
  }>({
    show: false,
    data: {
      blockHash: '',
      blockNumber: '',
      confirmations: '',
      contractAddress: '',
      cumulativeGasUsed: '',
      from: '',
      gas: '',
      gasPrice: '',
      gasUsed: '',
      hash: '',
      input: '',
      isError: '',
      nonce: '',
      timeStamp: '',
      to: '',
      transactionIndex: '',
      txreceipt_status: '',
      value: '',
    },
  })

  const { evmAddress } = useAppContext()
  const { data, isLoading } = useQuery({
    queryKey: ['getTxHistory'],
    queryFn: async () => {
      const res = await getTxHistory(evmAddress!)
      return res
    },
  })

  if (isLoading)
    return (
      <div className="flex h-[calc(100vh-100px)] items-center justify-center">
        <Spinner />
      </div>
    )
  return (
    <div className="w-full">
      {data &&
        data.result.map((val, i) => {
          const isSender = evmAddress! === val.from
          return (
            <div
              key={i}
              className="w-full bg-card mb-1 p-2 rounded-md"
              onClick={() => {
                setShowMore({
                  data: val,
                  show: true,
                })
              }}
            >
              <div className="flex justify-between items-center mb-1">
                {val.from && (
                  <p className="text-muted text-[14px]">From: {shortenAddress(val.from)}</p>
                )}

                {val.to && <p className="text-muted text-[14px]">To: {shortenAddress(val.to)}</p>}
              </div>
              <Row
                text1="Amount"
                text2={formatEtherBalance(ethers.parseUnits(val.value, 18), 18, 2)}
                text2class={isSender ? 'text-[#CE0606]' : 'text-[#06ce06]'}
              />
            </div>
          )
        })}
      <BottomModal
        title="Transaction details"
        showSheet={showMore!.show}
        onClose={() => {
          setShowMore((prev) => {
            return {
              data: prev!.data,
              show: false,
            }
          })
        }}
      >
        <div className="gap-y-2 w-full flex flex-col">
          {showMore && showMore!.data.value && (
            <Row text1="Amount" text2={ethers.parseUnits(showMore!.data.value, 18).toString()} />
            // <Row text1="Amount" text2={showMore!.data.value} />
          )}
          {showMore && showMore!.data.from && (
            <Row text1="From" text2={shortenAddress(showMore!.data.from)} />
          )}
          {showMore && showMore!.data.to && (
            <Row text1="To" text2={shortenAddress(showMore!.data.to)} />
          )}
          {showMore && showMore!.data.hash && (
            <Row text1="Transaction Hash" text2={shortString(showMore!.data.hash)} />
          )}
          {showMore && showMore!.data.blockHash && (
            <Row text1="Block hash" text2={shortString(showMore!.data.blockHash)} />
          )}
          {showMore && showMore!.data.gas && <Row text1="Gas" text2={showMore!.data.gas} />}
          {showMore && showMore!.data.txreceipt_status && (
            <Row
              text1="Status"
              text2={showMore!.data.txreceipt_status === '1' ? 'SUCCESS' : 'FAILED'}
              text2class={showMore!.data.txreceipt_status === '1' ? 'text-primary' : 'text-muted'}
            />
          )}
          {showMore && showMore!.data.timeStamp && (
            <Row
              text1="TimeStamp"
              text2={dayjs.unix(parseInt(showMore!.data.timeStamp)).format('MMMM D, YYYY h:mm A')}
            />
          )}
          {showMore && showMore!.data.contractAddress && (
            <Row text1="contractAddress" text2={showMore!.data.contractAddress} />
          )}
          <Row
            text1="State"
            text2={evmAddress! === showMore!.data.from ? 'DEBIT' : 'CREDIT'}
            text2class={evmAddress! === showMore!.data.from ? 'text-[#CE0606]' : 'text-[#06ce06]'}
          />
        </div>
      </BottomModal>
    </div>
  )
}

function Row(params: {
  text1: string
  text2?: string
  text1class?: string
  text2class?: string | undefined
}) {
  return (
    <div className="flex justify-between items-center">
      <p className={cn('text-muted text-[13.5px]', params.text1class)}>{params.text1}</p>
      <p className={cn('text-muted text-[13.5px]', params.text2class)}>{params.text2}</p>
    </div>
  )
}
