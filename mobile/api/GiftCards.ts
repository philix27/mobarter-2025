export interface GiftCardsResult {
  content: GiftCards[]
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

export interface GiftCards {
  productId: number
  productName: string
  global: boolean
  status: string
  supportsPreOrder: boolean
  senderFee: number
  senderFeePercentage: number
  discountPercentage: number
  denominationType: string
  recipientCurrencyCode: string
  minRecipientDenomination?: number
  maxRecipientDenomination?: number
  senderCurrencyCode: string
  minSenderDenomination?: number
  maxSenderDenomination?: number
  fixedRecipientDenominations: number[]
  fixedSenderDenominations?: number[]
  fixedRecipientToSenderDenominationsMap?: FixedRecipientToSenderDenominationsMap
  metadata?: Metadata
  logoUrls: string[]
  brand: Brand
  category: Category
  country: Country
  redeemInstruction: RedeemInstruction
  additionalRequirements: AdditionalRequirements
}

interface FixedRecipientToSenderDenominationsMap {
  '1.0'?: number
  '10.0'?: number
  '20.0'?: number
  '94.99'?: number
  '41.99'?: number
  '26.99'?: number
  '11.99'?: number
  '25.0'?: number
  '50.0'?: number
  '100.0'?: number
}

interface Metadata {
  '94.99'?: string
  '41.99'?: string
  '26.99'?: string
  '11.99'?: string
}

interface Brand {
  brandId: number
  brandName: string
}

interface Category {
  id: number
  name: string
}

interface Country {
  isoName: string
  name: string
  flagUrl: string
}

interface RedeemInstruction {
  concise: string
  verbose: string
}

interface AdditionalRequirements {
  userIdRequired: boolean
}

interface Pageable {
  sort: Sort
  pageNumber: number
  pageSize: number
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
