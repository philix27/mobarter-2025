import React from 'react'
import { Card, Label } from 'src/components/comps'
import Wrapper from 'src/components/wrapper/Wrapper'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <div className="w-full">
        <Label>Email</Label>
        <Card>philixbob@gmail.com</Card>
        <Label>Wallet Address</Label>
        <Card>{'0x462E5F272B8431562811126779da6EcaE51A5B40'.slice(0, 10)}</Card>
        <Label>Phone</Label>
        <Card>+2348108850572</Card>
        <Label>Name</Label>
        <Card>Felix Eligbue Chidiebele</Card>
      </div>
    </Wrapper>
  )
}
