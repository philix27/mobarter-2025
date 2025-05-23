import { Assets } from "@/app/utils/Assets";
import { publicPath } from "@/app/publicPath";

export type CountriesIso =
  | "NG"
  | "GH"
  | "KE"
  | "MW"
  | "RW"
  | "TZ"
  | "UG"
  | "ZA";

export type ICountriesData = {
  isoName: CountriesIso;
  name: string;
  continent: string;
  currencyCode: string;
  currencyName: string;
  currencySymbol: string;
  flag: string;
  callingCodes: string;
};

export const countriesList: ICountriesData[] = [
  {
    isoName: "NG",
    name: "Nigeria",
    continent: "Africa",
    currencyCode: "NGN",
    currencyName: "Nigerian Naira",
    currencySymbol: "₦",
    flag: publicPath(Assets.flags.ng),
    // flag: "https://s3.amazonaws.com/rld-flags/ng.svg",
    callingCodes: "+234",
  },
  {
    isoName: "GH",
    name: "Ghana",
    continent: "Africa",
    currencyCode: "GHS",
    currencyName: "Ghanaian Cedi",
    currencySymbol: "GH₵",
    flag: publicPath(Assets.flags.gh),
    // flag: "https://s3.amazonaws.com/rld-flags/gh.svg",
    callingCodes: "+233",
  },
  {
    isoName: "KE",
    name: "Kenya",
    continent: "Africa",
    currencyCode: "KES",
    currencyName: "Kenyan Shilling",
    currencySymbol: "Ksh",
    // flag: "https://s3.amazonaws.com/rld-flags/ke.svg",
    flag: publicPath(Assets.flags.ke),
    callingCodes: "+254",
  },
  {
    isoName: "MW",
    name: "Malawi",
    continent: "Africa",
    currencyCode: "MWK",
    currencyName: "Malawian Kwacha",
    currencySymbol: "MWK",
    // flag: "https://s3.amazonaws.com/rld-flags/mw.svg",
    flag: publicPath(Assets.flags.mw),
    callingCodes: "+265",
  },
  {
    isoName: "RW",
    name: "Rwanda",
    continent: "Africa",
    currencyCode: "RWF",
    currencyName: "Rwandan Franc",
    currencySymbol: "FR",
    // flag: "https://s3.amazonaws.com/rld-flags/rw.svg",
    flag: publicPath(Assets.flags.rw),
    callingCodes: "+250",
  },
  {
    isoName: "TZ",
    name: "Tanzania",
    continent: "Africa",
    currencyCode: "TZS",
    currencyName: "Tanzanian Shilling",
    currencySymbol: "TSh",
    flag: publicPath(Assets.flags.tz),
    // flag: "https://s3.amazonaws.com/rld-flags/tz.svg",
    callingCodes: "+255",
  },
  {
    isoName: "UG",
    name: "Uganda",
    continent: "Africa",
    currencyCode: "UGX",
    currencyName: "Ugandan Shilling",
    currencySymbol: "USh",
    // flag: "https://s3.amazonaws.com/rld-flags/ug.svg",
    flag: publicPath(Assets.flags.ug),
    callingCodes: "+256",
  },
  {
    isoName: "ZA",
    name: "South Africa",
    continent: "Africa",
    currencyCode: "ZAR",
    currencyName: "South African Rand",
    currencySymbol: "R",
    flag: publicPath(Assets.flags.za),
    // flag: "https://s3.amazonaws.com/rld-flags/za.svg",
    callingCodes: "+27",
  },
];
