// import { ChainId, IToken, TokenId, cn, formatEtherBalance, getTokenAddress } from '@repo/utils'
import Image from 'next/image'
import { useBalance } from 'wagmi'

import { useAppContext } from '@/src/Root/TgContext'
import { ChainId, IToken, TokenId, getTokenAddress } from '@/src/lib/config'
import { cn, formatEtherBalance } from '@/src/lib/utils'
import { TokenIcons } from '@/src/tokens/TokenIcon'

export function TokenRow(props: IToken & { className?: string; onClick?: VoidFunction }) {
  const { evmAddress } = useAppContext()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(props.symbol as TokenId, ChainId.Celo) as `0x${string}`,
  })

  if (isLoading) {
    return null
  }

  return (
    <div
      onClick={props.onClick}
      className={cn(
        'w-full px-2 py-1 flex items-center justify-center hover:bg-background mb-1 rounded-md ',
        props.className
      )}
    >
      <Image
        src={props.imgUrl}
        alt={TokenIcons.cUSDIcon.name}
        className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
      />

      <div className="flex justify-between w-full items-center">
        <div className="flex flex-col justify-between">
          <p className="text-[14px]">{props.symbol}</p>
          <p className="text-muted text-[12px]">{props.fullName}</p>
        </div>
        <p className="text-[14px] font-medium">
          {isLoading ? '*.**' : data ? formatEtherBalance(data.value, props.decimals, 3) : '0'}
        </p>
      </div>
    </div>
  )
}
