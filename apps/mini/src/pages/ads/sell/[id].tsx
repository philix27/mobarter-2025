import { useQuery } from '@apollo/client'
import * as Api from '@repo/api'
import { QueryResponse } from '@repo/api'
import { useRouter } from 'next/router'
import Wrapper from 'src/components/wrapper/Wrapper'
import SellAd from 'src/features/adverts/sell'
import { useTgBackButton } from 'src/lib/telegram'

export default function Page() {
  useTgBackButton()
  const router = useRouter()

  const { data, loading, error } = useQuery<QueryResponse<'adverts_getOne'>>(
    Api.Adverts_GetOneDocument,
    {
      variables: { input: { id: parseInt(router.query.id as string) } },
    }
  )

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error...</div>

  const { adverts_getOne } = data!
  return (
    <Wrapper hideBottomNav>
      <SellAd data={adverts_getOne} />
    </Wrapper>
  )
}
