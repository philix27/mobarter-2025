import { useBalance } from 'wagmi'

import { getBal } from '../utilities/getBalance'

import { useAppContext } from '@/src/Root/TgContext'
import { ChainId, Token, TokenId, getTokenAddress } from '@/src/lib/config'
import { cn } from '@/src/lib/utils'

export function TokenRow(props: Token & { className?: string; onClick?: VoidFunction }) {
  const { evmAddress } = useAppContext()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(props.symbol as TokenId, ChainId.Celo) as `0x${string}`,
  })

  if (isLoading) {
    return <div />
  }

  return (
    <div
      onClick={props.onClick}
      className={cn(
        'w-full px-2 py-1 flex items-center justify-center hover:bg-background mb-1 rounded-md ',
        props.className
      )}
    >
      <img
        src={props.logo}
        alt={props.name}
        className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
      />

      <div className="flex justify-between w-full items-center">
        <div className="flex flex-col justify-between">
          <p className="text-[14px]">{props.symbol}</p>
          <p className="text-muted text-[12px]">{props.name}</p>
        </div>
        <p className="text-[14px] font-medium">{isLoading ? '*.**' : getBal(data)}</p>
      </div>
    </div>
  )
}
