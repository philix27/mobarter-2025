import { Row, TView } from '@/components'
import { TText } from '@/components'
import React from 'react'
import { useSavings } from '../zustand'
import { Ionicons } from '@expo/vector-icons'

export default function ViewFixedDeposit() {
  const store = useSavings()
  return (
    <TView style={{ width: '100%', paddingTop: 10 }}>
      {store.fixedDepositList.map((val, i) => (
        <Row
          key={i}
          title={val.title}
          desc={`${val.duration} @ ${val.interestRate}`}
          icon={<Ionicons name="lock-closed" size={20} style={{ color: '#fff' }} />}
          trailing={
            <TText
              style={{ fontWeight: '700', fontSize: 14 }}
            >{`${val.currency} ${val.amount}`}</TText>
          }
        />
      ))}
    </TView>
  )
}
