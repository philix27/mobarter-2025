import { motion } from 'framer-motion'
import { ArrowLeftIcon, ArrowRight, Home, Lightbulb, LucideIcon, Settings } from 'lucide-react'
import React from 'react'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import { ThemeToggle } from '../ThemeToggle'

const DArrowLeftIcon = ArrowLeftIcon as any
const DArrowRight = ArrowRight as any
const DLightbulb = Lightbulb as any

export default function Drawer() {
  const store = AppStores.useSettings()
  return (
    <div
      className={cn(
        `h-full`,
        'fixed top-0 left-0 h-screen w-screen z-10',
        store.drawerIsOpen ? 'block' : 'hidden'
      )}
    >
      <div className="flex w-full h-full">
        <div className="md:w-[70%] md:max-w-[70%] hidden md:block h-full bg-[#1a1a1aa9]" />
        <motion.div
          initial={{ x: 200, opacity: 1 }}
          animate={{ x: 0, opacity: 1 }}
          transition={{ duration: 0.7, ease: 'easeOut', }}
          className="md:w-[30%] md:max-w-[30%] block w-full bg-card h-full"
        >
          <div
            className="py-3 px-5"
            onClick={() => {
              store.update({ drawerIsOpen: false })
            }}
          >
            <DArrowLeftIcon />
          </div>
          <div className=" px-4">
            <Row title={'KYC'} Icon={Home} />
            <Row title={'Settings'} Icon={Settings} />
            <ThemeRow />
          </div>
        </motion.div>
      </div>
    </div>
  )
}

function Row(params: {
  title: string
  Icon: LucideIcon
  hideArrow?: boolean
  onClick?: VoidFunction
}) {
  const Icon = params.Icon as any
  return (
    <div className="flex my-1 px-5 py-3 bg-background justify-between items-center rounded-lg">
      <div className="flex items-center justify-center">
        <Icon className="mr-4" size={20} />
        <p className="text-muted">{params.title}</p>
      </div>
      <DArrowRight className="text-muted" />
    </div>
  )
}
function ThemeRow() {
  return (
    <div className="flex my-1 px-5 py-3 bg-background justify-between items-center rounded-lg">
      <div className="flex items-center justify-center gap-x-4">
        <DLightbulb className="" />
        <p className="text-muted"> Theme</p>
      </div>
      <ThemeToggle />
    </div>
  )
}
