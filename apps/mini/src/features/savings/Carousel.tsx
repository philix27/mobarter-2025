import React from 'react'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { SiExpress } from 'react-icons/si'
import Carousel from 'react-multi-carousel'
import 'react-multi-carousel/lib/styles.css'

const DCarousel = Carousel as any
const responsive = {
  superLargeDesktop: {
    // the naming can be any, depends on you.
    breakpoint: { max: 4000, min: 3000 },
    items: 5,
  },
  desktop: {
    breakpoint: { max: 3000, min: 1024 },
    items: 3,
  },
  tablet: {
    breakpoint: { max: 1024, min: 464 },
    items: 2,
  },
  mobile: {
    breakpoint: { max: 464, min: 0 },
    items: 1,
  },
}
export function CarouselComp() {
  return (
    <DCarousel
      responsive={responsive}
      className="flex w-full mb-5 z-0"
      rewind
      infinite
      arrows={false}
      autoPlay
      swipeable
      transitionDuration={2000}
      autoPlaySpeed={15000}
      ssr
    >
      <Item
        title={'Airtime'}
        text={'Send airtime to your loved ones'}
        img={''}
        Icon={LiaPhoneVolumeSolid}
      />
      <Item
        title={'Instant Pay'}
        text={'Send funds directly to friends'}
        img={''}
        Icon={SiExpress}
      />
      <Item
        title={'Swap'}
        text={'Swap between various digital currencies'}
        img={''}
        Icon={IoSwapHorizontalOutline}
      />
    </DCarousel>
  )

  // return (
  //   <C.Carousel
  //     className='mb-5 z-0'
  //     emulateTouch
  //     infiniteLoop
  //     showArrows={false}
  //     showThumbs={false}
  //     stopOnHover
  //     transitionTime={1000}
  //     autoPlay
  //     showIndicators={false}
  //   showStatus = {false}
  //   >
  //     <Item  title={'Airtime'} text={'Send airtime to your loved ones'} img={''} />
  //     <Item  title={'Instant Pay'} text={'Send funds directly to friends'} img={''} />
  //     <Item  title={'Swap'} text={'Swap between various digital currencies'} img={''} />
  //   </C.Carousel>
  // )
}

function Item(props: { title: string; text: string; img: string; Icon: any }) {
  return (
    <div className="bg-[#000] rounded-lg flex items-center justify-between px-4 py-2 min-h-[100px] shadow-md w-full">
      <div className="flex flex-col items-start">
        <p className="text-primary font-bold mb-1">{props.title}</p>
        <p className="text-muted text-[14px]">{props.text}</p>
      </div>
      <div />
      <props.Icon className="text-primary mr-3" size={30} />
      {/* <img src="assets/1.jpeg" /> */}
    </div>
  )
}
