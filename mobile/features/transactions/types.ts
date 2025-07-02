export interface ITransactionsResponse {
  meta: Meta
  data: ITransactions[]
}

export interface Meta {
  page: number
  total_items: number
  limit_per_chain: number
  chain_ids: number[]
}

export interface ITransactions {
  chain_id: string
  hash: string
  nonce: number
  block_hash: string
  block_number: number
  block_timestamp: number
  transaction_index: number
  from_address: string
  to_address: string
  value: string
  gas: number
  gas_price: string
  data: string
  function_selector: string
  max_fee_per_gas: string
  max_priority_fee_per_gas: string
  max_fee_per_blob_gas: string
  transaction_type: number
  r: string
  s: string
  v: string
  access_list_json: string
  authorization_list_json: any
  contract_address: any
  gas_used: number
  cumulative_gas_used: number
  effective_gas_price: string
  blob_gas_used: number
  blob_gas_price: string
  logs_bloom: string
  status: number
}
