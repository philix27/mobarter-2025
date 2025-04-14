import { cn } from 'src/lib/utils'

export function Tab(props: {
  data: { title: string; isActive: boolean; onClick: VoidFunction }[]
}) {
  return (
    <div className="flex w-fit bg-card p-[2px] mb-2 rounded-[20px] border-card border">
      {props.data.map(({ isActive, onClick, title }, i) => (
        <div
          key={i}
          className={cn(
            'w-full px-4 py-1 rounded-[20px] flex items-center justify-center',
            isActive && `bg-background`
          )}
          onClick={onClick}
        >
          <p className={cn('text-[12px] font-normal', isActive ? 'text-primary font-semibold' : 'text-muted')}>{title}</p>
        </div>
      ))}
    </div>
  )
}
