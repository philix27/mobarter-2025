import { TView } from '@/components'
import { Label } from '@/components/forms'
import SelectCountry from './Comp'

export function SelectCountryCard() {
  return (
    <>
      <TView>
        <Label label="Country" />
        <SelectCountry />
      </TView>
    </>
  )
}
