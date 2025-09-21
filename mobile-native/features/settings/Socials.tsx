import { Row } from '@/components'
import React from 'react'
import { Linking } from 'react-native'
import { TView } from '@/components'
import { Api, StaticLinkGroup } from '@/graphql'

export default function Socials() {
  const { data, loading: isLoading } = Api.useStatic_GetLinks()

  if (isLoading) {
    return <TView />
  }

  return (
    <>
      {data?.static_getLinks
        .filter((v) => v.group === StaticLinkGroup.Social)
        .map((val, i) => (
          <Row
            key={i}
            title={val.title}
            desc={val.desc || undefined}
            imgUrl={val.imgLink || undefined}
            onClick={() => {
              Linking.openURL(val.url)
            }}
          />
        ))}
    </>
  )
}
