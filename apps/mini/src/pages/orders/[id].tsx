// import { useQuery } from '@apollo/client'
// import * as Api from '@repo/api'
// import { QueryResponse } from '@repo/api'
import { useRouter } from 'next/router'
import Wrapper from 'src/components/wrapper/Wrapper'

export default function Page() {
  const router = useRouter()

  //   const { data, loading, error } = useQuery<QueryResponse<'orders_GetOne'>>(Api., {
  //     variables: { input: { id: parseInt(router.query.id as string) } },
  //   })

  //   if (loading) return <div>Loading...</div>
  //   if (error) return <div>Error...</div>

  //   const { adverts_getOne } = data!
  return <Wrapper hideBottomNav>Order of Id: {router.query.id}</Wrapper>
}
