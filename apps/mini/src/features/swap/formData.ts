import { TokenId } from "src/lib/config"
import { z } from "zod"
import { SwapFormValues } from "./types"

export const schema = z.object({
  fromTokenId: z.string(),
  toTokenId: z.string(),
  amount: z.number(),
  quote: z.number(),
  direction: z.string(),
  slippage: z.string(),
})

export type IFormData = z.infer<typeof schema>

export const initialValues: SwapFormValues = {
  fromTokenId: TokenId.CELO,
  toTokenId: TokenId.cUSD,
  amount: 0,
  quote: 0,
  direction: 'in',
  slippage: '1.0',
}
