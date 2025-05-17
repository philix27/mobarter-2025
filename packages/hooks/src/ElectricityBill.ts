export interface IUtilityBillData {
  content: IUtilityBiller[]
  pageable: Pageable
  totalElements: number
  totalPages: number
  last: boolean
  first: boolean
  sort: Sort2
  numberOfElements: number
  size: number
  number: number
  empty: boolean
}

export interface IUtilityBiller {
  id: number
  name: string
  countryCode: string
  countryName: string
  type: string
  serviceType: string
  localAmountSupported: boolean
  localTransactionCurrencyCode: string
  minLocalTransactionAmount: number
  maxLocalTransactionAmount: number
  localTransactionFee: number
  localTransactionFeeCurrencyCode: string
  localDiscountPercentage: number
  internationalAmountSupported: boolean
  internationalTransactionCurrencyCode: string
  minInternationalTransactionAmount: number
  maxInternationalTransactionAmount: number
  internationalTransactionFee: number
  internationalTransactionFeeCurrencyCode: string
  localTransactionFeePercentage: number
  internationalTransactionFeePercentage: number
  internationalDiscountPercentage: number
  requiresInvoice: boolean
  fx: Fx
  denominationType: string
  localFixedAmounts: any
  internationalFixedAmounts: any
}

interface Fx {
  rate: number
  currencyCode: string
}

interface Pageable {
  sort: Sort
  pageSize: number
  pageNumber: number
  offset: number
  unpaged: boolean
  paged: boolean
}

interface Sort {
  sorted: boolean
  unsorted: boolean
  empty: boolean
}

interface Sort2 {
  sorted: boolean
  unsorted: boolean
  empty: boolean
}
