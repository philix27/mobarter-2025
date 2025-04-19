import { toast } from 'sonner'

import { logger } from './utils/logger'

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
    logger.info('Text copied to clipboard')
  } catch (err) {
    logger.error('Failed to copy text: ', err)
  }
}
