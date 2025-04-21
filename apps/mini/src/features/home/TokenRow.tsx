import Image from 'next/image'
import { useAppContext } from 'src/Root/context'
import { TokenIcons } from 'src/images/tokens/TokenIcon'
import { ChainId } from 'src/lib/config/chains'
import { IToken } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { cn, formatEtherBalance } from 'src/lib/utils'
import { useBalance } from 'wagmi'

export function TokenRow(props: IToken & { className?: string; onClick?:VoidFunction }) {
  const { evmAddress } = useAppContext()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(props.symbol as TokenId, ChainId.Celo) as `0x${string}`,
  })
  return (
    <div
      onClick={props.onClick}
      className={cn(
        'w-full px-2 py-1 flex items-center justify-center hover:bg-background mb-1',
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
          {isLoading ? 'X.XX' : data ? formatEtherBalance(data.value, props.decimals, 3) : '0'}
        </p>
      </div>
    </div>
  )
}
