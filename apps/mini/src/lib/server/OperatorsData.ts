export interface IOperators {
  id: number
  operatorId: number
  name: string
  bundle: boolean
  data: boolean
  pin: boolean
  comboProduct: boolean
  supportsLocalAmounts: boolean
  supportsGeographicalRechargePlans: boolean
  denominationType: string
  senderCurrencyCode: string
  senderCurrencySymbol: string
  destinationCurrencyCode: string
  destinationCurrencySymbol: string
  commission: number
  internationalDiscount: number
  localDiscount: number
  mostPopularAmount?: number
  mostPopularLocalAmount: any
  minAmount?: number
  maxAmount?: number
  localMinAmount: any
  localMaxAmount: any
  country: Country
  fx: Fx
  logoUrls: string[]
  fixedAmounts: number[]
  fixedAmountsDescriptions: Record<string, string>
  localFixedAmounts: any[]
  localFixedAmountsDescriptions?: Record<string, string>
  suggestedAmounts: any[]
  suggestedAmountsMap: Record<string, string>
  fees: Fees
  geographicalRechargePlans: any[]
  promotions: any[]
  status: string
}

interface Country {
  isoName: string
  name: string
}

interface Fx {
  rate: number
  currencyCode: string
}

interface Fees {
  international: number
  local: number
  localPercentage: number
  internationalPercentage: number
}
