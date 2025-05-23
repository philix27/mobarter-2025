import { InputButton } from '@/components/forms'
import { InfoRow } from './Card'

export default function BankInfo() {
  return (
    <>
      <InfoRow title="Opay:" title2={'0123456789'} />
      <InfoRow title="GTB" title2={'0123456789'} />
      <InfoRow title="Zenith" title2={'0123456789'!} />
      <InputButton title="Manage" />
    </>
  )
}
