import React from 'react'
import { MdLogout, MdOutlinePrivacyTip } from 'react-icons/md'
import { Label } from 'src/components/comps'
import { FcAbout } from 'react-icons/fc'
import { TbWorldWww } from 'react-icons/tb'

import { Row } from './comps'

export default function LinksAndActions() {
  return (
    <>
      <Label>Links</Label>
      <Row
        text="About Us"
        Icon={FcAbout}
        onClick={() => {
          return
        }}
      />
      <Row
        text="Website"
        Icon={TbWorldWww}
        onClick={() => {
          return
        }}
      />
      <Row
        text="Privacy Policy"
        Icon={MdOutlinePrivacyTip}
        onClick={() => {
          return
        }}
      />
      <Row
        text="Terms of Service"
        Icon={MdLogout}
        onClick={() => {
          return
        }}
      />
    </>
  )
}
