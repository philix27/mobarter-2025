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
}

export enum TokenId {
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
}

export const CeloTokens: Token[] = [
  {
    id: TokenId.CELO,
    symbol: TokenId.CELO,
    name: "Celo Native",
    color: Color.celoGold,
    decimals: 18,
    address: "0x471EcE3750Da237f93B8E339c536989b8978a438",
    logoUrl: publicPath(Assets.tokens.CELO),
  },
  {
    id: TokenId.cUSD,
    symbol: TokenId.cUSD,
    name: "Celo Dollar",
    color: Color.celoGreen,
    decimals: 18,
    address: "0x765DE816845861e75A25fCA122bb6898B8B1282a",
    logoUrl: publicPath(Assets.tokens.cUSD),
  },
  {
    id: TokenId.cEUR,
    symbol: TokenId.cEUR,
    name: "Celo Euro",
    color: Color.celoGreen,
    decimals: 18,
    address: "0xD8763CBa276a3738E6DE85b4b3bF5FDed6D6cA73",
    logoUrl: publicPath(Assets.tokens.cEUR),
  },
  {
    id: TokenId.cREAL,
    symbol: TokenId.cREAL,
    name: "Celo Real",
    color: Color.celoGreen,
    decimals: 18,
    address: "0xe8537a3d056DA446677B9E9d6c5dB704EaAb4787",
    logoUrl: publicPath(Assets.tokens.cREAL),
  },
  {
    id: TokenId.USDC,
    symbol: TokenId.USDC,
    name: "USDC",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0xcebA9300f2b948710d2653dD7B07f33A8B32118C",
    logoUrl: publicPath(Assets.tokens.USDC),
  },
  {
    id: TokenId.USDT,
    symbol: TokenId.USDT,
    name: "USDT",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0x48065fbBE25f71C9282ddf5e1cD6D6A887483D5e",
    logoUrl: publicPath(Assets.tokens.USDT),
  },
  {
    id: TokenId.axlUSDC,
    symbol: TokenId.axlUSDC,
    name: "Axelar USDC",
    color: Color.usdcBlue,
    decimals: 6,
    address: "0xEB466342C4d449BC9f53A865D5Cb90586f405215",
    logoUrl: publicPath(Assets.tokens.axIUSDC),
  },

  {
    id: TokenId.axlEUROC,
    symbol: TokenId.axlEUROC,
    name: "Axelar EUROC",
    color: Color.usdcBlue, // TODO: Change to EUROC
    decimals: 6,
    address: "0x061cc5a2C863E0C1Cb404006D559dB18A34C762d",
    logoUrl: publicPath(Assets.tokens.axIEUROC),
  },
  {
    id: TokenId.eXOF,
    symbol: TokenId.eXOF,
    name: "eXOF",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x73F93dcc49cB8A239e2032663e9475dd5ef29A08",
    logoUrl: publicPath(Assets.tokens.eXOF),
  },
  {
    id: TokenId.cKES,
    symbol: TokenId.cKES,
    name: "cKES",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x456a3D042C0DbD3db53D5489e98dFb038553B0d0",
    logoUrl: publicPath(Assets.tokens.cKES),
  },

  {
    id: TokenId.PUSO,
    symbol: TokenId.PUSO,
    name: "PUSO",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x105d4A9306D2E55a71d2Eb95B81553AE1dC20d7B",
    logoUrl: publicPath(Assets.tokens.PUSO),
  },

  {
    id: TokenId.cCOP,
    symbol: TokenId.cCOP,
    name: "cCOP",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0x8A567e2aE79CA692Bd748aB832081C45de4041eA",
    logoUrl: publicPath(Assets.tokens.cCOP),
  },

  {
    id: TokenId.cGHS,
    symbol: TokenId.cGHS,
    name: "cGHS",
    color: Color.usdcBlue,
    decimals: 18,
    address: "0xfAeA5F3404bbA20D3cc2f8C4B0A888F55a3c7313",
    logoUrl: publicPath(Assets.tokens.cGHS),
  },
];
