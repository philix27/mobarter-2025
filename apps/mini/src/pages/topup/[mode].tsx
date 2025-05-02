import { useRouter } from 'next/router'
import Wrapper from 'src/components/wrapper/Wrapper'

import Airtime from '@/src/features/others/TopUpAirtime'
import TopUpData from '@/src/features/others/TopUpData'

export default function Page() {
  const router = useRouter()
  const mode = router.query.mode as string

  return (
    <Wrapper hideBottomNav>
      {mode === 'data' && <TopUpData isData />}
      {mode === 'bundles' && <TopUpData isData={false} />}
      {mode === 'airtime' && <Airtime />}
    </Wrapper>
  )
}
