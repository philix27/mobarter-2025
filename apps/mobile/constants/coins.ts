import { AppAssets } from "@/assets";

export type ICoin = {
  title: string;
  symbol: string;
  chain: "ETH" | "CELO" | "BASE" | "COSMOS" | "OPTIMISM" | "BITCOIN";
  image: any;
};
export const coinsList: ICoin[] = [
  {
    title: "Tether",
    symbol: "USDT",
    chain: "ETH",
    image: AppAssets.logo.usdt,
  },
  {
    title: "Tether",
    symbol: "USDT",
    chain: "BASE",
    image: AppAssets.logo.usdt,
  },
  {
    title: "Tether",
    symbol: "USDT",
    chain: "OPTIMISM",
    image: AppAssets.logo.usdt,
  },
  {
    title: "Ethereum",
    symbol: "ETH",
    image: AppAssets.logo.ether,
    chain: "ETH",
  },
  {
    title: "ATOM",
    symbol: "ATM",
    chain: "COSMOS",
    image: AppAssets.logo.atom,
  },
  {
    title: "Bitcoin",
    symbol: "BTC",
    image: AppAssets.logo.bitcoin,
    chain: "BITCOIN",
  },
  {
    title: "Celo",
    symbol: "CEL",
    image: AppAssets.logo.celo,
    chain: "CELO",
  },
  {
    title: "Celo Coin",
    symbol: "CEL",
    image: AppAssets.logo["celo-coin"],
    chain: "CELO",
  },
  {
    title: "Celo Dollar",
    symbol: "CUSD",
    image: AppAssets.logo.cusd,
    chain: "CELO",
  },

  {
    title: "Glo Dollar",
    symbol: "USDGLO",
    image: AppAssets.logo.glo,
    chain: "ETH",
  },
];
