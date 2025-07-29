import { ReactNode } from 'react'

import BottomNav from './BottomNav'
import Drawer from './Drawer'
import Sidebar from './Sidebar'


export default function Wrapper(props: { children: ReactNode; hideBottomNav?: boolean }) {

  return (
    <div className="w-screen bg-background h-screen p-0 m-0">
      {/* <TopNav showBack={props.hideBottomNav} /> */}
      <div className="flex w-full bg-background">
        <Sidebar />
        {/* mt-[50px] md:mt-[70px] mb-[70px] md:mb-0 md:ml-[100px]  */}
        <div
          className={`
        mt-[5px] md:mt-[70px] mb-[90px] md:mb-0 md:ml-[100px] 
        w-full h-full
        px-4 py-0 md:py-2
        flex items-center justify-center
        bg-background`}
        >
          <div className="md:max-w-[840px] w-full">{props.children}</div>
        </div>
      </div>
      {props.hideBottomNav || <BottomNav />}
      <Drawer />
    </div>
  )
}
