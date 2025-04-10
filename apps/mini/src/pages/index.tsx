import Image from 'next/image'
import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import { TokenIcons } from 'src/images/tokens/TokenIcon'
import { AppStores } from 'src/lib/zustand'

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
  const store = AppStores.useSettings()

  return (
    <Wrapper>
      <div className="w-full items-center justify-center flex flex-col">
        <div className={`w-full 
        items-center justify-center flex flex-col
        fixed bg-background top-0 left-0
        pt-4 h-[150px]`}>
          <Tab
            data={[
              {
                title: 'HOME',
                isActive: store.homeTab === 'Balances',
                onClick: () => {
                  store.update({
                    homeTab: 'Balances',
                  })
                },
              },
              {
                title: 'OTHERS',
                isActive: store.homeTab === 'Services',
                onClick: () => {
                  store.update({
                    homeTab: 'Services',
                  })
                },
              },
            ]}
          />
          <div className="h-full flex items-center justify-center">
            <p className="text-[27.5px]">23.000 cUSD</p>
          </div>
        </div>
        <div className="flex flex-col bg-card rounded-md py-[0px] w-full mt-[150px]">
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
    <div className="w-full bg-background px-0 py-1 flex border-b-[0.2px] border-card items-center justify-center">
      <Image
        src={props.imgUrl}
        alt={TokenIcons.cUSDIcon.name}
        className="h-[35px] w-[35px] bg-background rounded-[25px] mr-3"
      />

      <div className="flex justify-between w-full items-center">
        <div className="flex flex-col justify-between">
          <p className="">{props.symbol}</p>
          <p className="text-muted text-[12px]">{props.fullName}</p>
        </div>
        <p className="text-[18px]">120.023</p>
      </div>
    </div>
  )
}
