import { useField } from 'formik'
import { ChevronIcon } from 'src/components/Chevron'
import { TokenIcon } from 'src/images/tokens/TokenIcon'
import { getTokenById, TokenId } from 'src/lib/config/tokens'
import { Select } from './comps/Select'

type Props = {
  name: string
  label: string
  onChange?: (optionValue: string) => void
  tokenOptions: TokenId[]
}

const DEFAULT_VALUE = {
  label: 'Select Token',
  value: '',
}

export function TokenSelectField({ name, label, onChange, tokenOptions }: Props) {
  const [field, , helpers] = useField<string>(name)

  const handleChange = (optionValue: string) => {
    helpers.setValue(optionValue || '')
    if (onChange) onChange(optionValue)
  }

  return (
    <Select
      value={field.value}
      optionValues={tokenOptions}
      onChange={handleChange}
      button={TokenButton}
      option={Option}
      buttonLabel={label}
    />
  )
}


function TokenButton(tokenId: string, buttonLabel?: string) {
  const token = getTokenById(tokenId)
  return (
    <div className="flex items-center p-1 transition-all rounded-lg border min-w-[180px] border-solid border-black dark:border-[#636366] py-3 pl-3 pr-4 dark:bg-[#404043]">
      <TokenIcon size="l" token={token} />
      <div className="ml-3">
        <label className="text-xs text-gray-400 cursor-pointer dark:text-white">
          {buttonLabel || DEFAULT_VALUE.label}
        </label>
        <div className="flex items-center font-semibold">
          <div className="">{token?.symbol || DEFAULT_VALUE.value}</div>
          <div className="ml-1">
            <ChevronIcon direction="s" width={12} height={6} />
          </div>
        </div>
      </div>
    </div>
  )
}


function Option(tokenId: string, selected?: boolean) {
  const token = getTokenById(tokenId)
  return (
    <div
      className={`py-1.5 px-3 flex items-center cursor-pointer hover:bg-gray-100 dark:hover:bg-[#4E4E55] ${
        selected ? 'bg-gray-50 dark:bg-[#36363B]' : ''
      }`}
    >
      <TokenIcon size="xs" token={token} />
      <div className="ml-2.5">{token?.symbol || 'Unknown'}</div>
    </div>
  )
}
