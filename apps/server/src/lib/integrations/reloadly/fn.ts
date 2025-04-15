import { IResponse, links } from './links';
import axios from 'axios';

// export const func: Record<Items, Function> = {
export const Reloadly_TopUpService = {
  LIVE_TOP_UP: async () => {
    axios.get('');
  },
  SANDBOX_TOP_UP: async () => {
    axios.get('');
  },
  'Get Transaction by ID': async () => {
    const result = await axios.get(links['Get Transaction by ID']);
    return result.data;
  },
  'Get Transactions': async () => {
    const result = await axios.get(links['Get Transactions']);
    return result.data;
  },
  'Get Top-up Status': async () => {
    const result = await axios.get(links['Get Top-up Status']);
    return result.data;
  },
  'Make Asynchronous Top-up': async () => {
    const result = await axios.get('');
    return result.data;
  },
  'Make Top-up': async () => {
    const result = await axios.get('');
    return result.data;
  },
  'Get Promotions by Operator ID': async () => {
    const result = await axios.get(links['Get Promotions by Operator ID']);
    return result.data;
  },
  'Get Promotions': async () => {
    const result = await axios.get(links['Get Promotions']);
    return result.data;
  },
  'Get Promotions by ISO Code': async () => {
    const result = await axios.get(links['Get Promotions by ISO Code']);
    return result.data;
  },
  'Get Promotion by ID': async () => {
    const result = await axios.get(links['Get Promotion by ID']);
    return result.data;
  },
  'Get Commission by Operator ID': async () => {
    const result = await axios.get(links['Get Commission by Operator ID']);
    return result.data;
  },
  'Get Commissions': async () => {
    const result = await axios.get(links['Get Commissions']);
    return result.data;
  },
  'Fetch FX Rate': async () => {
    axios.get('');
  },
  'Create Access Token': async () => {
    const res = await axios.post(links['Create Access Token']);
    return res.data as IResponse['Create Access Token'];
  },
  'View Account Balance': async () => {
    const res = await axios.get(links['View Account Balance']);
    return res.data as IResponse['View Account Balance'];
  },
  'Get Countries': async () => {
    const res = await axios.get(links['Get Countries']);
    return res.data as IResponse['Get Countries'];
  },
  'Get Country by ISO code': async () => {
    const res = await axios.get(links['Get Country by ISO code']);
    return res.data as IResponse['Get Country by ISO code'];
  },
  'Get Operator by ID': async () => {
    const res = await axios.get(links['Get Operator by ID']);
    return res.data as IResponse['Get Operator by ID'];
  },
  'Get Operator by ISO Code': async () => {
    const res = await axios.get(links['Get Operator by ISO Code']);
    return res.data as IResponse['Get Operator by ISO Code'];
  },
  'Get Operators': async (props: {
    countryCode: 'NG' | 'KE' | 'GH';
    params: {
      size?: number;
      includeCombo?: boolean;
      includeData?: boolean;
      suggestedAmounts?: boolean;
      dataOnly?: boolean;
    };
  }) => {
    const { countryCode, params } = props;
    const res = await axios.get(links['Get Operators'].concat(countryCode), {
      params,
    });
    return res.data as IResponse['Get Operators'];
  },
};
