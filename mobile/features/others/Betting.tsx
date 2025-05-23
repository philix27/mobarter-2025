import { Wrapper } from '@/components'
import { TText } from '@/components/ui'
import React, { useState } from 'react'

type ISteps = 'LIST' | 'DETAILS' | 'CONFIRM'
export default function BettingComp() {
  const [steps, setSteps] = useState<ISteps>('LIST')
  return (
    <Wrapper>
      <Switch steps={steps} />
    </Wrapper>
  )
}

function Switch(props: { steps: ISteps }) {
  switch (props.steps) {
    case 'LIST':
      return <BrandList />
    case 'DETAILS':
      return <Details />
    case 'CONFIRM':
      return <Confirm />
    default:
      return <BrandList />
  }
}

function BrandList() {
  // fetch list of brands
  return <TText>BrandList</TText>
}

function Details() {
  return <TText>Details</TText>
}

function Confirm() {
  return <TText>Confirm</TText>
}
