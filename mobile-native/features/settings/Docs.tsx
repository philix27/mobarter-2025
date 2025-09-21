import { Row } from '@/components'
import React from 'react'
import { Linking } from 'react-native'
import { TView } from '@/components'
import { Api, StaticLinkGroup } from '@/graphql'

export default function Docs() {
  const { data, loading } = Api.useStatic_GetLinks()

  if (loading) {
    return <TView />
  }

  return (
    <>
      {data?.static_getLinks
        .filter((v) => v.group === StaticLinkGroup.Docs)
        .map((val, i) => (
          <Row
            key={i}
            title={val.title}
            desc={val.desc || undefined}
            onClick={() => {
              Linking.openURL(val.url)
            }}
          />
        ))}
    </>
  )
}
