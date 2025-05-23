import { toast } from 'sonner'

export function toTitleCase(str: string) {
  return str.replace(/\w\S*/g, (txt) => {
    return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
  })
}

export const inputRegex = RegExp(`^\\d*(?:\\\\[.])?\\d*$`) // match escaped "." characters via in a non-capturing group

export const escapeRegExp = (string: string) => string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') // $& means the whole matched string

export const truncateTextByLength = (length: number, text: string): string => {
  return text.length > length ? text.slice(0, length) + '...' : text
}

export function shortString(str: any, len = 5): string {
  if (Array.isArray(str)) {
    str = '[' + str.toString() + ']'
  }
  if (str) {
    if (typeof str.toString === 'function') {
      str = str.toString()
    }
    if (str.length <= 10) {
      return str
    }
    return `${str.slice(0, len)}...${str.slice(str.length - len, str.length)}`
  }
  return ''
}

export const copyTextToClipboard = async (text: string) => {
  await navigator.clipboard.writeText(text).then(() => {
    toast.success('Copied')
  })
}
export const pasteTextFromClipboard = async () => {
  let val = ''
  await navigator.clipboard.readText().then((text) => {
    val = text
    toast.success('Paste from clipboard')
  })

  return val
}

export function formatEtherBalance(balance: bigint, decimals = 18, precision = 4) {
  if (balance === undefined) return 0
  const divisor = 10 ** decimals
  const ether = Number(balance) / divisor
  return ether.toFixed(precision) // returns a string like "0.1234"
}
