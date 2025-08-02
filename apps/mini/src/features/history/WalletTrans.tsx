import { useQuery } from '@tanstack/react-query'
import dayjs from 'dayjs'
import React, { memo, useState } from 'react'
import BottomModal from 'src/components/BottomModal'
import { Spinner } from 'src/components/Spinner'
import { shortenAddress } from 'src/lib/config/addresses'

// import { useAppContext } from '@/src/Root/TgContext'
import { TokenAddresses, TokenId } from '@/src/lib/config'
import { ITransactions, ITransactionsResult, getTxHistory } from '@/src/lib/server'
import { cn, formatEtherBalance, shortString } from '@/src/lib/utils'

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

  // const { evmAddress } = useAppContext()
  const { data, isLoading } = useQuery({
    queryKey: ['getTxHistory'],
    queryFn: async () => {
      const res = await getTxHistory("evmAddress"!)
      return res
    },
  })

  const getTokenId = (address: string) => {
    const tokens = TokenAddresses['42220']
    const name = Object.keys(tokens).filter((tokeId) => {
      const _tokeId = tokeId as TokenId
      return tokens[_tokeId].toUpperCase() === address.toUpperCase()
    })[0]

    if (name === undefined) return 'CELO'
    return name
  }
  if (isLoading)
    return (
      <div className="flex h-[calc(100vh-100px)] items-center justify-center">
        <Spinner />
      </div>
    )

  return (
    <Content
      data={data}
      evmAddress={"evmAddress"}
      setShowMore={setShowMore}
      getTokenId={getTokenId}
      showMore={showMore}
    />
  )
}

const Content = memo(function Comp({
  data,
  evmAddress,
  setShowMore,
  getTokenId,
  showMore,
}: {
  data: ITransactions | undefined
  evmAddress: string | undefined
  setShowMore: React.Dispatch<React.SetStateAction<{ data: ITransactionsResult; show: boolean }>>
  getTokenId: (address: string) => string
  showMore: { data: ITransactionsResult; show: boolean }
}) {
  return (
    <div className="w-full">
      {data &&
        data.result.map((val, i) => {
          const isSender = evmAddress!.toUpperCase() === val.from.toUpperCase()
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
              <Row
                text1={isSender ? 'Sent' : `Received`}
                text2={shortenAddress(isSender ? val.to : val.from)}
              />
              <Row
                text1={dayjs.unix(parseInt(val.timeStamp)).format('MMMM D, YYYY h:mm A')}
                text2={`${formatEtherBalance(BigInt(val.value), 18, 2)} ${getTokenId(
                  showMore!.data.to
                )}`}
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
        <div className="gap-y-4 w-full flex flex-col pb-5">
          {showMore && showMore!.data.value && (
            <Row
              text1="Amount"
              text2={`${formatEtherBalance(BigInt(showMore!.data.value), 18, 3)} ${getTokenId(
                showMore!.data.to
              )}`}
            />
            // <Row
            //   text1="Amount"
            //   text2={`${ethers.parseUnits(showMore!.data.value, 18)} ${getTokenId(
            //     showMore!.data.to
            //   )}`}
            // />
            // formatEtherBalance(data!.value, data!.decimals, 3)
            // <Row text1="Amount" text2={showMore!.data.value} />
          )}
          {showMore && showMore!.data.from && (
            <Row text1="From" text2={shortenAddress(showMore!.data.from)} />
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
            text2class={
              evmAddress!.toUpperCase() === showMore!.data.from.toUpperCase()
                ? 'text-[#CE0606]'
                : 'text-[#06ce06]'
            }
          />
        </div>
      </BottomModal>
    </div>
  )
})

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
