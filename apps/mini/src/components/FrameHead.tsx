import Head from 'next/head'

export function FrameTitle(props: {
  version: string
  imageUrl: string
  'button.title': string
  'button.action.type': 'launch_frame'
  'button.action.url'?: string
  'button.action.name'?: string
  'button.action.splashImageUrl'?: string
  'button.action.splashBackgroundColor'?: string
}) {
  return (
    <Head>
      <meta name="fc:frame" content={JSON.stringify(props)} />
    </Head>
  )
}
