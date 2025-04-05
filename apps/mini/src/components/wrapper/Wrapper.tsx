import { ReactNode } from 'react'

import BottomNav from './BottomNav'
import Drawer from './Drawer'
import Sidebar from './Sidebar'
import TopNav from './TopNav'

export default function Wrapper(props: { children: ReactNode }) {
  return (
    <div className="w-screen bg-background h-screen p-0 m-0">
      <TopNav />
      <div className="flex w-full bg-background">
        <Sidebar />
        <div className={`
        mt-[70px] mb-[70px] md:mb-0 md:ml-[100px] 
        w-full h-full
        px-4 py-2
        flex items-center justify-center
        bg-background`}>
          <div className="md:max-w-[840px] w-full">{props.children}</div>
        </div>
      </div>
      <BottomNav />
      <Drawer />
    </div>
  )
}
