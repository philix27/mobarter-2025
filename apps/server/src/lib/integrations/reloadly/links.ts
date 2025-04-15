import { Countries, IGetToken, IMethods } from './t.countries';

export type Items =
  | 'LIVE_TOP_UP'
  | 'SANDBOX_TOP_UP'
  | 'Get Transaction by ID'
  | 'Get Transactions'
  | 'Get Top-up Status'
  | 'Make Asynchronous Top-up'
  | 'Make Top-up'
  | 'Get Promotions by Operator ID'
  | 'Get Promotions'
  | 'Get Promotions by ISO Code'
  | 'Get Promotion by ID'
  | 'Get Commission by Operator ID'
  | 'Get Commissions'
  | 'Fetch FX Rate'
  | 'Create Access Token'
  | 'View Account Balance'
  | 'Get Countries'
  | 'Get Country by ISO code'
  | 'Get Operator by ID'
  | 'Get Operator by ISO Code'
  | 'Get Operators';

export const links: Record<Items, string> = {
  'Get Transaction by ID':
    'https://topups.reloadly.com/topups/reports/transactions/{transactionId}',
  'Get Transactions': 'https://topups.reloadly.com/topups/reports/transactions',
  'Get Top-up Status':
    'https://topups.reloadly.com/topups/{transactionId}/status',
  'Make Asynchronous Top-up': 'https://topups.reloadly.com/topups-async',
  'Make Top-up': 'https://topups.reloadly.com/topups',
  'Get Promotions by Operator ID':
    'https://topups.reloadly.com/promotions/operators/{operatorid}',
  'Get Promotions': 'https://topups.reloadly.com/promotions',
  'Get Promotions by ISO Code':
    'https://topups.reloadly.com/promotions/country-codes/{countrycode}',
  'Get Promotion by ID': 'https://topups.reloadly.com/promotions/{promotionid}',
  'Get Commission by Operator ID':
    'https://topups.reloadly.com/operators/{operatorid}/commissions',
  'Get Commissions': 'https://topups.reloadly.com/operators/commissions',
  'Fetch FX Rate': 'https://topups.reloadly.com/operators/fx-rate',
  'Create Access Token': 'https://auth.reloadly.com/oauth/token',
  'View Account Balance': 'https://topups.reloadly.com/accounts/balance',
  'Get Countries': 'https://topups.reloadly.com/countries',
  'Get Country by ISO code':
    'https://topups.reloadly.com/countries/{countrycode}',
  'Get Operator by ID': 'https://topups.reloadly.com/operators/{operatorid}',
  'Get Operators': 'https://topups.reloadly.com/operators',
  LIVE_TOP_UP: 'https://topups.reloadly.com',
  SANDBOX_TOP_UP: 'https://topups-sandbox.reloadly.com',
  'Get Operator by ISO Code':
    'https://topups.reloadly.com/operators/countries/',
};

export const methods: Record<Items, 'POST' | 'GET'> = {
  LIVE_TOP_UP: 'POST',
  SANDBOX_TOP_UP: 'POST',
  'Get Transaction by ID': 'GET',
  'Get Transactions': 'GET',
  'Get Top-up Status': 'GET',
  'Make Asynchronous Top-up': 'POST',
  'Make Top-up': 'POST',

  'Get Promotions by Operator ID': 'GET',
  'Get Promotions': 'GET',
  'Get Promotions by ISO Code': 'GET',
  'Get Promotion by ID': 'GET',
  'Get Commission by Operator ID': 'GET',
  'Get Commissions': 'GET',

  'Fetch FX Rate': 'POST',
  'Create Access Token': 'POST',
  'View Account Balance': 'GET',
  'Get Countries': 'GET',
  'Get Country by ISO code': 'GET',
  'Get Operator by ID': 'GET',
  'Get Operator by ISO Code': 'POST',
  'Get Operators': 'GET',
};

// <K extends keyof Mutation> = Response<Mutation, K>;
export interface IReloadlyEndpoints {
  countries: {
    link: 'https://topups.reloadly.com/countries';
    response: Countries;
    method: IMethods;
  };
  accessToken: {
    response: IGetToken;
    link: 'https://auth.reloadly.com/oauth/token ';
    method: IMethods;
  };
}

// export type Response<V, K extends keyof V> = {
//   [key in K]: V[K];
// };
// export type MutationResponse<K extends keyof Items> = Response<Items, K>;

export type IResponse = {
  LIVE_TOP_UP: undefined;
  SANDBOX_TOP_UP: undefined;
  'Get Transaction by ID': undefined;
  'Get Transactions': undefined;
  'Get Top-up Status': undefined;
  'Make Asynchronous Top-up': undefined;
  'Make Top-up': undefined;
  'Get Promotions by Operator ID': undefined;
  'Get Promotions': undefined;
  'Get Promotions by ISO Code': undefined;
  'Get Promotion by ID': undefined;
  'Get Commission by Operator ID': undefined;
  'Get Commissions': undefined;
  'Fetch FX Rate': undefined;
  'Create Access Token': {
    access_token: string;
    scope: string;
    expires_in: number;
    token_type: string;
  };
  'View Account Balance': undefined;
  'Get Countries': undefined;
  'Get Country by ISO code': undefined;
  'Get Operator by ID': undefined;
  'Get Operator by ISO Code': undefined;
  'Get Operators': undefined;
};
