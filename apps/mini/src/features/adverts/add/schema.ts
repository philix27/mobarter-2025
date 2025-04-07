import { z } from 'zod'

export const schema = z.object({
  fx: z.string().min(3, 'Required'),
  crypto: z.string().min(3, 'Required'),
  fiat: z.string().min(3, 'Required'),
  limitLower: z.number().gt(0, 'Amount must be grater than zero'),
  limitUpper: z.number().gt(0, 'Amount must be grater than zero'),
  rate: z.number().gt(0, 'Amount must be grater than zero'),
  instructions: z.string().min(5, 'Required'),
  duration: z.number().gt(0, 'Specify time in minutes'),
})

export type IFormData = z.infer<typeof schema>
