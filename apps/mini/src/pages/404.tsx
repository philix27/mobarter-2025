import Image from 'next/image'
import Link from 'next/link'
import NotFoundIcon from 'src/images/icons/not_found.svg'

export default function Custom404() {
  return (
    <div >
      <div className="flex flex-col items-center justify-center p-5">
        <h1 className="text-2xl mb-8 text-center">This page could not be found, sorry!</h1>
        <Image src={NotFoundIcon} alt="Not Found" width={150} height={150} />
        <h3 className="text-lg mt-8 text-center">
          Please check the URL or go{' '}
          <Link href="/" className="cursor-pointer underline">
            back to home
          </Link>
          .
        </h3>
      </div>
    </div>
  )
}
