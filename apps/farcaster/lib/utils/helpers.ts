export function roundUpTo2Decimals(num: number, places: 100 | 1000 | 10000): number {
    // 100 for 2 decimal
    // 1000 for 2 decimal
  return Math.ceil(num * places) / places
}

export function formatCurrency(amount: number, decimals = 2): string {
  return amount.toLocaleString('en-US', {
    minimumFractionDigits: decimals,
    maximumFractionDigits: decimals,
  })
}
