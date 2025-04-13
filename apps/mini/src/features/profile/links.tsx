import React from 'react'
import { MdLogout } from 'react-icons/md'
import { Label } from 'src/components/comps'

import { Row } from './comps'

export default function LinksAndActions() {
  return (
    <>
      <Label>Support</Label>
      <div className="p-1 bg-card gap-y-[2px] flex flex-col rounded-md">
        <Row
          text="Contact Us"
          Icon={MdLogout}
          onClick={() => {
            return
          }}
        />
        <Row
          text="Support Group"
          Icon={MdLogout}
          onClick={() => {
            return
          }}
        />
      </div>
      <Label>Links</Label>
      <div className="p-1 bg-card gap-y-[2px] flex flex-col rounded-md">
        <Row
          text="About Us"
          Icon={MdLogout}
          onClick={() => {
            return
          }}
        />
        <Row
          text="Website"
          Icon={MdLogout}
          onClick={() => {
            return
          }}
        />
        <Row
          text="Privacy Policy"
          Icon={MdLogout}
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
      </div>
    </>
  )
}
