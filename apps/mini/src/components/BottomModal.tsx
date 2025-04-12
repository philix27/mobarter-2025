import { motion } from 'framer-motion'
import { XIcon } from 'lucide-react'
import { ReactNode } from 'react'
import { cn } from 'src/lib/utils'

export default function BottomModal({
  showSheet = false,
  ...props
}: {
  title?: string
  showSheet?: boolean
  onClose: VoidFunction
  children: ReactNode
}) {
  return (
    <div
      className={cn(
        `h-screen w-screen 
        bg-[#0000008c]
        fixed left-0 bottom-0 top-0  z-40
        flex items-center justify-between flex-col`,
        showSheet ? 'block' : 'hidden'
      )}
    >
      <div className="h-full w-full flex flex-col items-end justify-end">
        <motion.div
          initial={{ y: 200, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.5, ease: 'easeOut', easeInOut: 'easeOut' }}
          className={cn(
            `min-h-[375px] bg-card border-none 
        w-full bot
         rounded-t-[15px] 
        `
          )}
        >
          <div
            className="w-full  flex items-center justify-between py-[10px] px-5  border-b-[0.2px] border-b-background"
            onClick={props.onClose}
          >
            {props.title ? <p className="text-xs font-semibold">{props.title}</p> : <div />}
            <XIcon size={18} />
          </div>
          <div className="px-3 py-2">{props.children}</div>
          <div className="h-[70px]" />
        </motion.div>
      </div>
    </div>
  )
}
