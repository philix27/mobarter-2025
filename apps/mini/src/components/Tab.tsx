import { cn } from 'src/lib/utils'

export function Tab(props: {
  data: { title: string; isActive: boolean; onClick: VoidFunction }[]
}) {
  return (
    <div className="flex w-fit bg-card p-[2px] mb-2 rounded-md">
      {props.data.map(({ isActive, onClick, title }, i) => (
        <div
          key={i}
          className={cn(
            'w-full px-4 py-1 rounded-md flex items-center justify-center',
            isActive && `bg-primary`
          )}
          onClick={onClick}
        >
          <p className={cn('text-[12px]', isActive ? 'text-primary-foreground' : 'text-muted')}>{title}</p>
        </div>
      ))}
    </div>
  )
}
