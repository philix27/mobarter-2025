import { chains, type ChainInfo } from '@particle-network/chains';

const erc4337Raw = {
  BICONOMY_V1: {
    NAME: 'BiconomyV1 Account',
    SUPPORTED_CHAIN_IDS: [1, 5, 137, 56, 97, 42161, 42170, 10, 43114, 43113, 8453, 1101, 59140],
    BATCH_TX: true,
    VERSION: '1.0.0',
  },
  BICONOMY_V2: {
    NAME: 'Biconomy Account',
    SUPPORTED_CHAIN_IDS: [
      1, 11155111, 137, 80002, 56, 97, 42161, 42170, 421614, 10, 11155420, 43114, 43113, 8453, 84532, 1101, 2442, 59144,
      204, 5611, 5000, 5003, 169, 9980, 1284, 534352, 534351, 81457, 168587773, 196, 195, 100, 10200, 7000, 7001,
    ],
    BATCH_TX: true,
    VERSION: '2.0.0',
  },
  SIMPLE_V1: {
    NAME: 'Simple Account',
    SUPPORTED_CHAIN_IDS: [
      1, 11155111, 17000, 137, 80002, 56, 97, 204, 5611, 42161, 42170, 421614, 43114, 43113, 8453, 84532, 59144, 59141,
      10, 11155420, 169, 3441006, 5000, 5003, 534352, 534351, 100, 10200, 88, 89, 1284, 1285, 1287, 1101, 250, 4002,
      9980, 1715, 42766, 43851, 167000, 167009, 196, 195, 3776, 6038361, 12008, 12015, 7000, 7001, 1116, 1115, 34443,
      919, 888888888, 28122024, 81457, 168587773, 80084, 112358, 1637450, 2777, 202402181627, 13473, 2241, 9990, 7560,
      111557560, 1225, 200901, 200810, 122, 123, 4689, 4690, 1329, 1328, 713715, 48899, 1802203764,
    ],
    BATCH_TX: true,
    VERSION: '1.0.0',
  },
  SIMPLE_V2: {
    NAME: 'Simple Account',
    SUPPORTED_CHAIN_IDS: [
      1, 11155111, 17000, 137, 80002, 56, 97, 204, 5611, 42161, 42170, 421614, 43114, 43113, 8453, 84532, 59144, 59141,
      10, 11155420, 169, 3441006, 5000, 5003, 534352, 534351, 100, 10200, 88, 89, 1284, 1285, 1287, 1101, 250, 4002,
      9980, 1715, 42766, 43851, 167000, 167009, 196, 195, 3776, 6038361, 12008, 12015, 7000, 7001, 1116, 1115, 34443,
      919, 888888888, 28122024, 81457, 168587773, 80084, 112358, 1637450, 2777, 202402181627, 13473, 2241, 9990, 7560,
      111557560, 1225, 200901, 200810, 122, 123, 4689, 4690, 1329, 1328, 713715, 48899, 1802203764,
    ],
    BATCH_TX: true,
    VERSION: '2.0.0',
  },
  CYBERCONNECT: {
    NAME: 'Cyber Account',
    SUPPORTED_CHAIN_IDS: [
      1, 11155111, 56, 97, 10, 11155420, 137, 80002, 8453, 84532, 59144, 42161, 204, 5611, 534352, 534351, 81457,
      168587773, 5000, 7560, 111557560,
    ],
    BATCH_TX: true,
    VERSION: '1.0.0',
  },
  LIGHT: {
    NAME: 'Alchemy Account',
    SUPPORTED_CHAIN_IDS: [1, 11155111, 10, 137, 8453, 42161, 421613],
    BATCH_TX: true,
    VERSION: '1.0.2',
  },
  XTERIO: {
    NAME: 'Xterio Account',
    SUPPORTED_CHAIN_IDS: [2702128, 112358, 1637450, 1, 11155111, 56, 204, 8453, 42161, 137],
    BATCH_TX: true,
    VERSION: '1.0.0',
  },
};

export type ERC4337Config = {
  name: string;
  version: string;
  chains: ChainInfo[];
};

export const erc4337Config: ERC4337Config[] = Object.keys(erc4337Raw).map((key) => {
  const data = erc4337Raw[key as keyof typeof erc4337Raw];
  const name = key.split('_')[0];
  const version = data.VERSION;
  const chainInfos = data.SUPPORTED_CHAIN_IDS.map((id) => chains.getEVMChainInfoById(id)).filter((item) =>
    Boolean(item)
  );
  return {
    name,
    version,
    chains: chainInfos as ChainInfo[],
  };
});
