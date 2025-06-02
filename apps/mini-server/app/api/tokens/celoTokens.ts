import { publicPath } from "@/app/publicPath";
import { Color } from "./color";
import { Assets } from "@/app/utils/Assets";

export interface Token {
  id: TokenId;
  symbol: TokenId; // The same as id for now
  name: string;
  color: string;
  address: string;
  logoUrl: string;
  decimals: number;
  isPayable?: boolean;
  isBuyable?: boolean;
  isSellable?: boolean;
}

export enum TokenId {
  cNGN = "cNGN",
  CELO = "CELO",
  cUSD = "cUSD",
  cEUR = "cEUR",
  cREAL = "cREAL",
  USDC = "USDC",
  USDT = "USDT",
  axlUSDC = "axlUSDC",
  axlEUROC = "axlEUROC",
  eXOF = "eXOF",
  cKES = "cKES",
  PUSO = "PUSO",
  cCOP = "cCOP",
  cGHS = "cGHS",
  cGBP = "cGBP",
  cZAR = "cZAR",
  cCAD = "cCAD",
  cAUD = "cAUD",
  cCHF = "cCHF",
  cJPY = "cJPY",
}

const tokensObj: Record<TokenId, Token> = {
  [TokenId.CELO]: {
    id: TokenId.CELO,
    symbol: TokenId.CELO,
    name: "Celo Native",
    color: Color.celoGold,
    decimals: 18,
    address: "0x471EcE3750Da237f93B8E339c536989b8978a438",
    logoUrl: publicPath(Assets.tokens.CELO),
  },
  [TokenId.cUSD]: {
    id: TokenId.cUSD,
    symbol: TokenId.cUSD,
    name: "Celo Dollar",
    color: Color.celoGreen,
    decimals: 18,
    address: "0x765DE816845861e75A25fCA122bb6898B8B1282a",
    logoUrl: publicPath(Assets.tokens.cUSD),
    isPayable: true,
  },
  [TokenId.cEUR]: {
    id: TokenId.cEUR,
    symbol: TokenId.cEUR,
    name: "Celo Euro",
    color: Color.celoGreen,
    decimals: 18,
    address: "0xD8763CBa276a3738E6DE85b4b3bF5FDed6D6cA73",
    logoUrl: publicPath(Assets.tokens.cEUR),
  },
  [TokenId.cREAL]: {
    id: TokenId.cREAL,
    symbol: TokenId.cREAL,
    name: "Celo Real",
    color: Color.celoGreen,
    decimals: 18,
    address: "0xe8537a3d056DA446677B9E9d6c5dB704EaAb4787",
    logoUrl: publicPath(Assets.tokens.cREAL),
  },
  [TokenId.USDC]: {
    id: TokenId.USDC,
    symbol: TokenId.USDC,
    name: "USDC",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0xcebA9300f2b948710d2653dD7B07f33A8B32118C",
    logoUrl: publicPath(Assets.tokens.USDC),
    isPayable: true,
  },
  [TokenId.USDT]: {
    id: TokenId.USDT,
    symbol: TokenId.USDT,
    name: "USDT",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0x48065fbBE25f71C9282ddf5e1cD6D6A887483D5e",
    logoUrl: publicPath(Assets.tokens.USDT),
    isPayable: true,
  },
  [TokenId.axlUSDC]: {
    id: TokenId.axlUSDC,
    symbol: TokenId.axlUSDC,
    name: "Axelar USDC",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0xEB466342C4d449BC9f53A865D5Cb90586f405215",
    logoUrl: publicPath(Assets.tokens.axIUSDC),
  },
  [TokenId.axlEUROC]: {
    id: TokenId.axlEUROC,
    symbol: TokenId.axlEUROC,
    name: "Axelar EUROC",
    color: Color.usdcBlue, // TODO: Change to EUROC
    decimals: 6,
    address: "0x061cc5a2C863E0C1Cb404006D559dB18A34C762d",
    logoUrl: publicPath(Assets.tokens.axIEUROC),
  },
  [TokenId.eXOF]: {
    id: TokenId.eXOF,
    symbol: TokenId.eXOF,
    name: "eXOF",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x73F93dcc49cB8A239e2032663e9475dd5ef29A08",
    logoUrl: publicPath(Assets.tokens.eXOF),
  },
  [TokenId.cKES]: {
    id: TokenId.cKES,
    symbol: TokenId.cKES,
    name: "cKES",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x456a3D042C0DbD3db53D5489e98dFb038553B0d0",
    logoUrl: publicPath(Assets.tokens.cKES),
  },
  [TokenId.PUSO]: {
    id: TokenId.PUSO,
    symbol: TokenId.PUSO,
    name: "PUSO",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x105d4A9306D2E55a71d2Eb95B81553AE1dC20d7B",
    logoUrl: publicPath(Assets.tokens.PUSO),
  },
  [TokenId.cCOP]: {
    id: TokenId.cCOP,
    symbol: TokenId.cCOP,
    name: "cCOP",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x8A567e2aE79CA692Bd748aB832081C45de4041eA",
    logoUrl: publicPath(Assets.tokens.cCOP),
  },
  [TokenId.cGHS]: {
    id: TokenId.cGHS,
    symbol: TokenId.cGHS,
    name: "cGHS",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xfAeA5F3404bbA20D3cc2f8C4B0A888F55a3c7313",
    logoUrl: publicPath(Assets.tokens.cGHS),
  },
  [TokenId.cZAR]: {
    id: TokenId.cZAR,
    symbol: TokenId.cZAR,
    name: "Celo South African Rand",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x4c35853A3B4e647fD266f4de678dCc8fEC410BF6",
    logoUrl: publicPath(Assets.tokens.cZAR),
  },
  [TokenId.cCAD]: {
    id: TokenId.cCAD,
    symbol: TokenId.cCAD,
    name: "Celo Canadian Dollar",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xff4Ab19391af240c311c54200a492233052B6325",
    logoUrl: publicPath(Assets.tokens.cCAD),
  },
  [TokenId.cAUD]: {
    id: TokenId.cAUD,
    symbol: TokenId.cAUD,
    name: "Celo Australian Dollar",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x7175504C455076F15c04A2F90a8e352281F492F9",
    logoUrl: publicPath(Assets.tokens.cAUD),
  },
  [TokenId.cCHF]: {
    id: TokenId.cCHF,
    symbol: TokenId.cCHF,
    name: "Celo Swiss Franc",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xb55a79F398E759E43C95b979163f30eC87Ee131D",
    logoUrl: publicPath(Assets.tokens.cCHF),
  },
  [TokenId.cJPY]: {
    id: TokenId.cJPY,
    symbol: TokenId.cJPY,
    name: "Celo Japanese Yen",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xc45eCF20f3CD864B32D9794d6f76814aE8892e20",
    logoUrl: publicPath(Assets.tokens.cJPY),
  },
  [TokenId.cNGN]: {
    id: TokenId.cNGN,
    symbol: TokenId.cNGN,
    name: "Celo Nigerian Naira",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xE2702Bd97ee33c88c8f6f92DA3B733608aa76F71",
    logoUrl: publicPath(Assets.tokens.cNGN),
  },
  [TokenId.cGBP]: {
    id: TokenId.cGBP,
    symbol: TokenId.cGBP,
    name: "Celo British Pound",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xCCF663b1fF11028f0b19058d0f7B674004a40746",
    logoUrl: publicPath(Assets.tokens.cGBP),
  },
};

export const CeloTokens: Token[] = Object.keys(tokensObj).map((val) => {
  const key = val as TokenId;
  return tokensObj[key];
});
