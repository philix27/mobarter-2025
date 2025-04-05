import Link from 'next/link'
import { toast } from 'react-toastify'
import { ChainId, chainIdToChain } from 'src/lib/config/chains'

export function toastToYourSuccess(msg: string, txHash: string, chainId: ChainId) {
  const explorerUrl = chainIdToChain[chainId].explorerUrl
  toast.success(<TxSuccessToast msg={msg} txHash={txHash} explorerUrl={explorerUrl} />, {
    autoClose: 15000,
  })
}

export function TxSuccessToast({
  msg,
  txHash,
  explorerUrl,
}: {
  msg: string
  txHash: string
  explorerUrl: string
}) {
  return (
    <div>
      {msg + ' '}
      <Link className="underline" href={`${explorerUrl}/tx/${txHash}`}>
        See Details
      </Link>
    </div>
  )
}
