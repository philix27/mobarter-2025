import { toast } from 'react-toastify'

export function shortString(str: any): string {
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
    return `${str.slice(0, 5)}...${str.slice(str.length - 5, str.length)}`
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
