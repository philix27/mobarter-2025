import React from 'react'
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
      <a href="https://t.me/mobarter_bot" target="_blank">
        <Row text="Support" Icon={MdGroups2} />
      </a>
    </>
  )
}
