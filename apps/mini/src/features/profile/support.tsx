import React from 'react'
import { FcCustomerSupport } from 'react-icons/fc'
import { MdGroups2 } from 'react-icons/md'
import { Label } from 'src/components/comps'

import { Row } from './comps'

export default function Support() {
  return (
    <>
      <Label>Support</Label>
      <a href="https://t.me/mobarter" target="_blank">
        <Row text="Telegram Group" Icon={MdGroups2} />
      </a>
      <Row
        text="Customer Support"
        Icon={FcCustomerSupport}
        onClick={() => {
          const w = window as any
          // e.$chatwoot.toggle('open') // To open widget
          w.$chatwoot.toggle('open')
          return
        }}
      />
    </>
  )
}
