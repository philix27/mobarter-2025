import { formatEtherBalance } from "@/src/lib/utils"

export const getBal = (
  data:
    | {
        decimals: number
        formatted: string
        symbol: string
        value: bigint
      }
    | undefined
) => {
  if (data === undefined) return 0
  if (data.value === undefined) return 0
  if (data.value === BigInt(0)) return 0
  if (data.value < BigInt(0)) return 0
  return formatEtherBalance(data.value, data.decimals, 3)
}
