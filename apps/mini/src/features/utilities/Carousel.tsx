// import * as C from 'react-responsive-carousel'
import 'react-responsive-carousel/lib/styles/carousel.min.css'
export function CarouselComp() {
  return <div className="flex overflow-x-scroll w-full mb-5 z-0">
     <Item  title={'Airtime'} text={'Send airtime to your loved ones'} img={''} />
      {/* <Item  title={'Instant Pay'} text={'Send funds directly to friends'} img={''} />
      <Item  title={'Swap'} text={'Swap between various digital currencies'} img={''} /> */}
  </div>
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


function Item(props:{ title:string;text:string; img:string}) {
  return <div className='bg-[#000] rounded-lg flex items-center justify-between px-4 py-2 min-h-[100px] shadow-md w-full'>
    <div className='flex flex-col items-start'>
      <p className='text-primary font-bold mb-1'>{ props.title}</p>
      <p className='text-muted text-[14px]'>{ props.text}</p>
    </div>
    <div />
     {/* <img src="assets/1.jpeg" /> */}
  </div>
}