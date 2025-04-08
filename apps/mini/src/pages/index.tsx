import Image from 'next/image'
import Wrapper from 'src/components/wrapper/Wrapper'
import { TokenIcons } from 'src/images/tokens/TokenIcon'

type IToken = {
  fullName: string
  imgUrl: string
  symbol: string
}
const dummyTokens: IToken[] = [
  { fullName: 'Celo Dollar', symbol: 'cUSD', imgUrl: TokenIcons.cUSDIcon },
  { fullName: 'Celo Native Token', symbol: 'CELO', imgUrl: TokenIcons.CeloIcon },
  { fullName: 'Celo Dollar', symbol: 'PUSD', imgUrl: TokenIcons.PUSOIcon },
  { fullName: 'US Dollar Tether', symbol: 'USDT', imgUrl: TokenIcons.USDTIcon },
  {
    fullName: 'Ax EURO',
    symbol: 'axlEUROC',
    imgUrl: TokenIcons.axlEUROCIcon,
  },
  {
    fullName: 'Ax US Dollar',
    symbol: 'axlUSDC',
    imgUrl: TokenIcons.axlUSDCIcon,
  },
  { fullName: 'Celo Dollar', symbol: 'cCOP', imgUrl: TokenIcons.cCOPIcon },
  { fullName: 'Euro', symbol: 'cEUR', imgUrl: TokenIcons.cEURIcon },
  { fullName: 'Ghana Cedis', symbol: 'cGHS', imgUrl: TokenIcons.cGHSIcon },
  { fullName: 'Kenya Shillings', symbol: 'cKES', imgUrl: TokenIcons.cKESIcon },
  { fullName: 'Celo Dollar', symbol: 'cREAL', imgUrl: TokenIcons.cREALIcon },
  { fullName: 'Celo Dollar', symbol: 'eXOF', imgUrl: TokenIcons.eXOFIcon },
]

export default function HomePage() {
  return (
    <Wrapper>
      <div className="w-full items-center justify-center">
        <div className="h-[150px] flex items-center justify-center">
          <p className="text-[27.5px]">23.000 cUSD</p>
        </div>
        <div className="flex flex-col">
          {dummyTokens.map((val, i) => (
            <Row key={i} {...val} />
          ))}
        </div>
      </div>
    </Wrapper>
  )
}

function Row(props: IToken) {
  return (
    <div className="w-full bg-card px-2 py-2 mb-1 flex rounded-md">
      <div className="h-[40px] w-[45px] bg-background rounded-[25px] mr-3">
        <Image src={props.imgUrl} alt={TokenIcons.cUSDIcon.name} />
      </div>
      <div className="flex justify-between w-full items-center">
        <div className="flex flex-col justify-between gap-y-[2px]">
          <p className="">{props.symbol}</p>
          <p className="text-muted text-[12px]">{props.fullName}</p>
        </div>
        <p className="text-[18px]">120.023</p>
      </div>
    </div>
  )
}
