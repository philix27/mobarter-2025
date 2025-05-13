import { TokenIcons } from './TokenIcon';

import * as t from './tokens';
import { Token, cUSD } from './tokens';

export interface IToken extends Token {
  fullName: string;
  imgUrl: string;
}
export const tokensList: IToken[] = [
  { fullName: 'Celo Dollar', imgUrl: TokenIcons.cUSDIcon, ...cUSD },

  { fullName: 'Celo Token', imgUrl: TokenIcons.CeloIcon, ...t.CELO },
  { fullName: 'Celo Dollar', imgUrl: TokenIcons.PUSOIcon, ...t.PUSO },
  { fullName: 'US Dollar Tether', imgUrl: TokenIcons.USDTIcon, ...t.USDT },
  {
    fullName: 'Ax EURO',
    imgUrl: TokenIcons.axlEUROCIcon,
    ...t.axlEUROC,
  },
  {
    fullName: 'Ax US Dollar',
    imgUrl: TokenIcons.axlUSDCIcon,
    ...t.axlEUROC,
  },
  { fullName: 'Celo Dollar', imgUrl: TokenIcons.cCOPIcon, ...t.cCOP },
  { fullName: 'Euro', imgUrl: TokenIcons.cEURIcon, ...t.cEUR },
  { fullName: 'Ghana Cedis', imgUrl: TokenIcons.cGHSIcon, ...t.cGHS },
  { fullName: 'Kenya Shillings', imgUrl: TokenIcons.cKESIcon, ...t.cKES },
  { fullName: 'Celo REAL', imgUrl: TokenIcons.cREALIcon, ...t.cREAL },
  // { fullName: 'Celo Dollar', imgUrl: TokenIcons.eXOFIcon, ...t.eXOF },
];
