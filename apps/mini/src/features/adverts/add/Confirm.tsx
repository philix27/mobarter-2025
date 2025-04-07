import { UseFormGetValues } from 'react-hook-form'
import { Card, Label } from 'src/components/comps'

import { IFormData } from './schema'

export default function ConfirmDetails({ getValues }: { getValues: UseFormGetValues<IFormData> }) {
  return (
    <div>
      <div>
        <Label>Crypto</Label>
        <Card>{getValues('crypto')}</Card>
      </div>
      <div>
        <Label>Duration</Label>
        <Card>{getValues('duration')}</Card>
      </div>
      <div>
        <Label>Fiat</Label>
        <Card>{getValues('fiat')}</Card>
      </div>
      <div>
        <Label>FX</Label>
        <Card>{getValues('fx')}</Card>
      </div>
    </div>
  )
}
