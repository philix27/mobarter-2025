import { Moon, Sun } from 'lucide-react'
import { useDarkMode } from 'src/styles/mediaQueries'

export function ThemeToggle() {
  const { isDarkMode, setDarkMode } = useDarkMode()
  return (
    <div
      className="inline-flex items-center justify-start gap-3 cursor-pointer"
      onClick={() => setDarkMode(!isDarkMode)}
    >
      <div className="transition-color relative px-0.5 py-[1px] dark:bg-fuchsia-200 rounded-[32px] border border-gray-950 justify-center items-center gap-[5px] flex">
        <div className="relative flex flex-col items-start justify-start w-4 h-5 p-1 pr-0">
          <Sun size={14} />
        </div>
        <div className="relative flex flex-col items-start justify-start w-4 h-5 py-1 pr-1">
          <Moon size={14} />
        </div>
        <div
          className={`absolute transition transform left-[2px] w-[18px] h-[18px] bg-gray-950 rounded-full border border-gray-950 ${
            !isDarkMode ? 'translate-x-[19px]' : ''
          }
          `}
        />
      </div>
    </div>
  )
}
