import { TView } from '@/components'
import { InputButton, InputText, Label } from '@/components/forms'
import React, { useState } from 'react'
import { durationList } from './data'
import { TText } from '@/components'
import { useColor } from '@/hooks'
import { ScrollView, TouchableOpacity } from 'react-native'
import { useSavings } from '../zustand'
import ErrMsg from '@/components/forms/ErrMsg'

export default function Create() {
  const [title, setTitle] = useState<{ value: string | undefined; error: string | undefined }>()
  const [amount, setAmount] = useState<{ value: string | undefined; error: string | undefined }>()
  const [duration, setDuration] = useState<{
    title: string
    subtitle: string
    error?: string | undefined
  }>()
  const theme = useColor()
  const store = useSavings()

  const handleSubmit = () => {
    if (!title?.value) {
      setTitle({ error: 'Enter a title', value: undefined })
      return
    }
    if (!amount?.value) {
      setAmount({ error: 'Enter an amount', value: undefined })
      return
    }
    if (!duration) {
      setDuration({ error: 'Enter an amount', title: '', subtitle: '' })
      return
    }
    store.update({
      fixedDepositList: [
        ...store.fixedDepositList,
        {
          title: title.value,
          amount: amount.value,
          currency: 'cNGN',
          duration: duration.title,
          interestRate: duration.subtitle,
        },
      ],
    })
  }
  return (
    <TView style={{ width: '100%', alignItems: 'center', justifyContent: 'center', rowGap: 20 }}>
      <InputText
        label={'Title'}
        value={title?.value}
        onChangeText={(text) => {
          if (text.length > 12) return
          setTitle({ error: undefined, value: text })
        }}
        error={title?.error}
        placeholder={'Purpose for this deposit'}
      />
      <InputText
        label={'Amount'}
        value={amount?.value}
        onChangeText={(text) => {
          if (text.length > 12) return
          setAmount({ error: undefined, value: text })
        }}
        error={amount?.error}
        placeholder={'Enter amount'}
        keyboardType="numeric"
      />

      <TView
        style={{
          marginBottom: 10,
          width: '100%',
        }}
      >
        <Label label="Duration" />
        <ScrollView
          zoomScale={1}
          bouncesZoom={false}
          directionalLockEnabled
          horizontal={true}
          showsHorizontalScrollIndicator={false}
        >
          <TView
            style={{
              flexDirection: 'row',
              columnGap: 8,
              // flexWrap: 'wrap',
              // rowGap: 10,
              // alignItems: 'center',
              // justifyContent: 'center',
              // paddingHorizontal: 125,
            }}
          >
            {durationList.map((val, i) => {
              const isSelected =
                duration?.title.toLocaleLowerCase() === val.title.toLocaleLowerCase()
              return (
                <TouchableOpacity
                  key={i}
                  style={{
                    backgroundColor: theme.card,
                    paddingVertical: 5,
                    paddingHorizontal: 20,
                    borderRadius: 10,
                    borderColor: isSelected ? theme.primary : theme.card,
                    borderWidth: 2,
                  }}
                  onPress={() => {
                    if (!title?.value) {
                      setTitle({ error: 'Enter a title', value: undefined })
                      return
                    }
                    if (!amount?.value) {
                      setAmount({ error: 'Enter an amount', value: undefined })
                      return
                    }
                    setDuration(val)
                  }}
                >
                  <TText style={{ fontSize: 14, fontWeight: '700', marginBottom: 0.5 }}>
                    {val.title}
                  </TText>
                  <TText style={{ fontSize: 12, color: theme.muted, marginTop: 0, lineHeight: 0 }}>
                    {val.subtitle}
                  </TText>
                </TouchableOpacity>
              )
            })}
          </TView>
        </ScrollView>
        {duration?.error && <ErrMsg msg={duration.error} />}
      </TView>

      {duration && (
        <>
          <TView
            style={{
              marginBottom: 10,
              width: '100%',
            }}
          >
            <Label label="Note:" />
          </TView>

          <TView
            style={{
              backgroundColor: theme.accent,
              width: '100%',
              padding: 10,
              borderRadius: 20,
              borderWidth: 0.5,
              borderColor: theme.primary,
              rowGap: 8,
              marginBottom: 20,
            }}
          >
            <InfoRow text1={'Withholding Tax'} text2={'$0'} />
            <InfoRow text1={'Interest Value'} text2={'$100'} />
            <TText type="md" muted style={{ lineHeight: 24 }}>
              This is your total interest value from saving
              <TText style={{ fontWeight: '700' }}>{` ${amount?.value} cNGN `}</TText>for
              <TText style={{ fontWeight: '700' }}>{` ${duration?.title}`}</TText>.
            </TText>
          </TView>
        </>
      )}
      <InputButton title="Deposit" onPress={handleSubmit} />
    </TView>
  )
}

function InfoRow(params: { text1: string; text2: string }) {
  const theme = useColor()
  return (
    <TView
      style={{
        width: '100%',
        backgroundColor: theme.accent,
        flexDirection: 'row',
        justifyContent: 'space-between',
      }}
    >
      <TText muted style={{}} type="md">
        {params.text1}
      </TText>
      <TText type="md" style={{ fontWeight: '700' }}>
        {params.text2}
      </TText>
    </TView>
  )
}
