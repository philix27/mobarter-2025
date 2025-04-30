import axios from 'axios'
import { IOperators } from './OperatorsData'

export async function getBundlesOperator(countryIso: string) {
  const res = await axios.get(`/api/operator-bundles/${countryIso}`)
  return res.data as IOperators[]
}
