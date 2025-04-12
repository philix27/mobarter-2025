import { TokenIcons } from 'src/images/tokens/TokenIcon'

export type IToken = {
  fullName: string
  imgUrl: string
  symbol: string
}
export const dummyTokens: IToken[] = [
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
