import { clsx } from 'clsx'
import { ReactNode, useState } from 'react'
import { Drawer } from 'vaul'

const snapPoints = ['148px', '355px', 1]
export default function BottomModal({
  showSheet = false,
  ...props
}: {
  title?: string
  className?: string
  showSheet?: boolean
  onClose: VoidFunction
  children: ReactNode
}) {
  const [snap, setSnap] = useState<number | string | null>(snapPoints[0])
  return (
    <Drawer.Root
      open={showSheet}
      onOpenChange={props.onClose}
      repositionInputs={true}
      // snapPoints={snapPoints}
      // activeSnapPoint={snap}
      setActiveSnapPoint={setSnap}
    >
      <Drawer.Overlay className="fixed inset-0  bg-[#0000008c]" />
      <Drawer.Portal>
        <Drawer.Content className="bg-card flex flex-col rounded-t-[10px] p-2 h-fit fixed bottom-0 left-0 right-0 outline-none">
          <div
            className={clsx('flex flex-col max-w-md mx-auto w-full pt-1 mb-5 px-2', {
              'overflow-y-auto': snap === 1,
              'overflow-hidden': snap !== 1,
            })}
          >
            <Drawer.Handle className="bg-muted mb-4" />
            {/* <div
            className="w-full flex items-center justify-between px-3"
          >
           
            {props.title && <Drawer.Title className="text-[12px] font-semibold">{props.title}</Drawer.Title>}
          </div> */}
            {props.children}
            <div className="h-[100px]" />
          </div>
        </Drawer.Content>
      </Drawer.Portal>
    </Drawer.Root>
  )
}
