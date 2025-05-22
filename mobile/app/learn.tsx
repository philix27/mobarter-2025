import { Wrapper, HeaderBar } from '@/components/layout'
import React from 'react'
import { Row, TView } from '@/components/ui'
import { ActivityIndicator, Linking } from 'react-native'
import { useGetLinksLearn } from '@/hooks'

export default function Page() {
  const { data, isLoading } = useGetLinksLearn()

  if (isLoading) {
    return (
      <Wrapper>
        <HeaderBar title="Learn" showBackBtn backTo="/settings" />
        <ActivityIndicator />
      </Wrapper>
    )
  }

  return (
    <>
      <HeaderBar title="Learn" showBackBtn backTo="/settings" />
      <Wrapper>
        <TView style={{ width: '100%' }}>
          {data?.map((val, i) => (
            <Row
              key={i}
              title={val.title}
              desc={val.desc}
              onClick={() => {
                Linking.openURL(val.url)
              }}
            />
          ))}
        </TView>
      </Wrapper>
    </>
  )
}
