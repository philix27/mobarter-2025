import { Component } from 'react'
import { logger } from 'src/lib/utils/logger'

interface ErrorBoundaryState {
  error: any
  errorInfo: any
}

export class ErrorBoundary extends Component<any, ErrorBoundaryState> {
  constructor(props: any) {
    super(props)
    this.state = { error: null, errorInfo: null }
  }

  componentDidCatch(error: any, errorInfo: any) {
    this.setState({
      error,
      errorInfo,
    })
    logger.error('Error caught by error boundary', error, errorInfo)
  }

  render() {
    const errorInfo = this.state.error || this.state.errorInfo
    if (errorInfo) {
      const details = errorInfo.message || JSON.stringify(errorInfo)
      return <FailScreen details={details.substr(0, 120)} />
    }
    return this.props.children
  }
}

function FailScreen({ details }: { details?: string }) {
  return (
    <div className="flex flex-col items-center justify-center w-screen h-screen bg-gradient-linear">
      <div className="hidden sm:block fixed top-5 left-5">Error img</div>
      <FailContent details={details} />
    </div>
  )
}

export function FailContent({ details }: { details?: string }) {
  return (
    <div>
      <div className="flex flex-col items-center justify-center p-5">
        <h1 className="text-2xl mb-2 text-center">Something went wrong, sorry!</h1>

        {details && <p className="text-md text-center mt-6 text-gray-500">{details}</p>}
      </div>
    </div>
  )
}
