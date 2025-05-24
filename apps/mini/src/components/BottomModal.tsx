import { clsx } from 'clsx'
import { ReactNode, useState } from 'react'
import { Content, Handle, Overlay, Portal, Root } from 'vaul'

import { cn } from '../lib/utils'

const DContent = Content as any
const DHandle = Handle as any
const DOverlay = Overlay as any
const DPortal = Portal as any
const DRoot = Root as any
const snapPoints = ['148px', '355px', 1]

export default function BottomModal({
  showSheet = false,
  ...props
}: {
  title?: string
  className?: string
  showSheet?: boolean
  fullHeight?: boolean
  onClose?: VoidFunction
  children: ReactNode
}) {
  const [snap, setSnap] = useState<number | string | null>(snapPoints[0])
  return (
    <DRoot
      open={showSheet}
      onOpenChange={props.onClose}
      repositionInputs={true}
      // snapPoints={snapPoints}
      // activeSnapPoint={snap}
      setActiveSnapPoint={setSnap}
    >
      <DOverlay
        className="fixed inset-0  bg-[#00000095]"
        onClick={() => {
          return
        }}
        // onDoubleClick={props.onClose}
      />
      <DPortal>
        <DContent
          className={cn(
            `bg-background flex flex-col 
        rounded-t-[10px] p-2 h-fit
        fixed bottom-0 left-0 right-0 max-h-[85vh]
        outline-none `,
            props.fullHeight && 'h-[85vh]'
          )}
        >
          <div
            className={clsx(
              'flex flex-col max-w-md mx-auto w-full pt-1 mb-5 px-2 max-h-[80vh] overflow-y-scroll',
              {
                'overflow-y-auto': snap === 1,
                'overflow-hidden': snap !== 1,
              }
            )}
          >
            <DHandle className="bg-muted mb-4" />

            {props.children}
            {/* <div className="h-[10px]" /> */}
          </div>
        </DContent>
      </DPortal>
    </DRoot>
  )
}
