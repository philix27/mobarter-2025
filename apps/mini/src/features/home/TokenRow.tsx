import Image from 'next/image'
import { TokenIcons } from 'src/images/tokens/TokenIcon'

import { IToken } from './tokenData'

export function TokenRow(props: IToken) {
  return (
    <div className="w-full px-2 py-1 flex items-center justify-center hover:bg-background ">
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
        <p className="text-[15px] font-medium">120.023</p>
      </div>
    </div>
  )
}
