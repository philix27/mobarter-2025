import Link from 'next/link'
import { toast } from 'sonner'
import { ChainId, chainIdToChain } from 'src/lib/config/chains'

export function toastToYourSuccess(msg: string, txHash: string, chainId: ChainId) {
  const explorerUrl = chainIdToChain[chainId].explorerUrl
  toast.success(<TxSuccessToast msg={msg} txHash={txHash} explorerUrl={explorerUrl} />)
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
