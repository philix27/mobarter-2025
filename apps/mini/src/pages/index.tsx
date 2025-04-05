import { useEffect, useState } from 'react'
import Wrapper from 'src/components/wrapper/Wrapper'

export default function SwapPage() {
  const [rendered, setRendered] = useState(false)
  useEffect(() => {
    setRendered(true)
  }, [])

  if (!rendered) return <div>Loading...</div>
  return (
    <Wrapper>
      <div className="w-full items-center justify-center flex">Hello</div>
    </Wrapper>
  )
}
