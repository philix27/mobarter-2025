import { memo } from 'react'

// From https://loading.io/css/
function _Spinner() {
  return (
    <div className={''}>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <p>Loading...</p>
    </div>
  )
}

export const Spinner = memo(_Spinner)
