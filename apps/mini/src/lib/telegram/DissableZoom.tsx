import { ReactNode, useEffect } from 'react'

export function PreventZoom(props: { children: ReactNode }) {
  return (
    <div className="no-scrollbar" id="root">
      <DisableZoom>{props.children}</DisableZoom>
    </div>
  )
}

export function DisableZoom(props: { children: ReactNode }) {
  useEffect(() => {
    document.addEventListener('gesturestart', function (e) {
      e.preventDefault()
      // special hack to prevent zoom-to-tabs gesture in safari
      document.body.style.zoom = '0.99'
    })

    document.addEventListener('gesturechange', function (e) {
      e.preventDefault()
      // special hack to prevent zoom-to-tabs gesture in safari
      document.body.style.zoom = '0.99'
    })

    document.addEventListener('gestureend', function (e) {
      e.preventDefault()
      // special hack to prevent zoom-to-tabs gesture in safari
      document.body.style.zoom = '0.99'
    })

    // return () => {}
  }, [])

  useEffect(() => {
    const handleWheel = (e: any) => {
      if (e.ctrlKey || e.metaKey) {
        e.preventDefault()
      }
    }

    const handleKeyDown = (e: any) => {
      if ((e.ctrlKey || e.metaKey) && (e.key === '+' || e.key === '-' || e.key === '=')) {
        e.preventDefault()
      }
    }

    // Add event listeners when the component mounts
    window.addEventListener('wheel', handleWheel)
    window.addEventListener('keydown', handleKeyDown)

    // Clean up by removing event listeners when the component unmounts
    return () => {
      window.removeEventListener('wheel', handleWheel)
      window.removeEventListener('keydown', handleKeyDown)
    }
  }, [])

  if (window.visualViewport) {
    window.visualViewport.addEventListener('resize', () => {
      document.body.style.height = window.visualViewport!.height + 'px'
    })
  }
  // This will ensure user never overscroll the page
  window.addEventListener('scroll', () => {
    if (window.scrollY > 0) window.scrollTo(0, 0)
  })
  return <>{props.children}</>
}
