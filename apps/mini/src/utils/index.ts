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
