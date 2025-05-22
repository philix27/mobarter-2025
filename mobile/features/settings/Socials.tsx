import Row from '@/components/ui/Row'
import { AppStores } from '@/lib'
import React from 'react'
import { Linking } from 'react-native'
import { Card, SectionTitle } from './Card'
import { useGetLinksSocial } from '@/hooks'
import { TView } from '@/components'

export default function Socials() {
  const store = AppStores.useUserInfo()
  const { data, isLoading } = useGetLinksSocial()

  if (isLoading) {
    return <TView />
  }

  return (
    <>
      {data?.map((val, i) => (
        <Row
          key={i}
          title={val.title}
          desc={val.desc}
          imgUrl={val.logo}
          onClick={() => {
            Linking.openURL(val.link)
          }}
        />
      ))}
    </>
  )
}
