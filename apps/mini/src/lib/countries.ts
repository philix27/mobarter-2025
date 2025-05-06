import { CurrencyFiat } from '@repo/api'

export type CountriesIso = 'NG' | 'GH' | 'KE' | 'MW' | 'RW' | 'TZ' | 'UG' | 'ZA'

export const mapCountryToIso: Record<CountriesIso, CurrencyFiat> = {
  NG: CurrencyFiat.Ng,
  GH: CurrencyFiat.Gh,
  KE: CurrencyFiat.Ke,
  MW: CurrencyFiat.Mw,
  RW: CurrencyFiat.Rw,
  TZ: CurrencyFiat.Tz,
  UG: CurrencyFiat.Ug,
  ZA: CurrencyFiat.Za,
}

export type IData = {
  isoName: CountriesIso
  name: string
  continent: string
  currencyCode: string
  currencyName: string
  currencySymbol: string
  flag: string
  callingCodes: string[]
}

export const countryCode = (iso: CountriesIso) => mapCountryToData[iso].callingCodes[0]
export const mapCountryToData: Record<CountriesIso, IData> = {
  NG: {
    isoName: 'NG',
    name: 'Nigeria',
    continent: 'Africa',
    currencyCode: 'NGN',
    currencyName: 'Nigerian Naira',
    currencySymbol: '₦',
    flag: 'https://s3.amazonaws.com/rld-flags/ng.svg',
    callingCodes: ['+234'],
  },
  GH: {
    isoName: 'GH',
    name: 'Ghana',
    continent: 'Africa',
    currencyCode: 'GHS',
    currencyName: 'Ghanaian Cedi',
    currencySymbol: 'GH₵',
    flag: 'https://s3.amazonaws.com/rld-flags/gh.svg',
    callingCodes: ['+233'],
  },
  KE: {
    isoName: 'KE',
    name: 'Kenya',
    continent: 'Africa',
    currencyCode: 'KES',
    currencyName: 'Kenyan Shilling',
    currencySymbol: 'Ksh',
    flag: 'https://s3.amazonaws.com/rld-flags/ke.svg',
    callingCodes: ['+254'],
  },
  MW: {
    isoName: 'MW',
    name: 'Malawi',
    continent: 'Africa',
    currencyCode: 'MWK',
    currencyName: 'Malawian Kwacha',
    currencySymbol: 'MWK',
    flag: 'https://s3.amazonaws.com/rld-flags/mw.svg',
    callingCodes: ['+265'],
  },
  RW: {
    isoName: 'RW',
    name: 'Rwanda',
    continent: 'Africa',
    currencyCode: 'RWF',
    currencyName: 'Rwandan Franc',
    currencySymbol: 'FR',
    flag: 'https://s3.amazonaws.com/rld-flags/rw.svg',
    callingCodes: ['+250'],
  },
  TZ: {
    isoName: 'TZ',
    name: 'Tanzania',
    continent: 'Africa',
    currencyCode: 'TZS',
    currencyName: 'Tanzanian Shilling',
    currencySymbol: 'TSh',
    flag: 'https://s3.amazonaws.com/rld-flags/tz.svg',
    callingCodes: ['+255'],
  },
  UG: {
    isoName: 'UG',
    name: 'Uganda',
    continent: 'Africa',
    currencyCode: 'UGX',
    currencyName: 'Ugandan Shilling',
    currencySymbol: 'USh',
    flag: 'https://s3.amazonaws.com/rld-flags/ug.svg',
    callingCodes: ['+256'],
  },
  ZA: {
    isoName: 'ZA',
    name: 'South Africa',
    continent: 'Africa',
    currencyCode: 'ZAR',
    currencyName: 'South African Rand',
    currencySymbol: 'R',
    flag: 'https://s3.amazonaws.com/rld-flags/za.svg',
    callingCodes: ['+27'],
  },
}

export const essentialCountriesList: IData[] = Object.keys(mapCountryToData).map((key) => {
  return mapCountryToData[key as CountriesIso]
})
