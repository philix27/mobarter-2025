import { toast } from 'sonner'

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
  try {
    await navigator.clipboard.writeText(text)
    toast.success('Copied')
    console.log('Text copied to clipboard')
  } catch (err) {
    console.error('Failed to copy text: ', err)
  }
}
