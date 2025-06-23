const dev = process.env.NODE_ENV

type IEnv = {
  BACKEND_ENDPOINT: string
  BACKEND_GRAPHQL: string
  BACKEND_SELF_ENDPOINT: string
  BACKEND_MINI_ENDPOINT: string
  THIRDWEB_CLIENT_ID: string
}

const _env: Record<typeof dev, IEnv> = {
  development: {
    BACKEND_ENDPOINT: 'http://192.168.240.100:4545',
    BACKEND_GRAPHQL: 'http://192.168.240.100:4545/graphql',
    BACKEND_SELF_ENDPOINT: 'http://192.168.240.100:4545/api/v1/kyc/self',
    BACKEND_MINI_ENDPOINT: 'http://192.168.240.100:4000',
    THIRDWEB_CLIENT_ID: '109344c426bd8f1b6b104293acb235dc',
  },
  production: {
    BACKEND_ENDPOINT: 'https://server.mobater.com',
    BACKEND_GRAPHQL: 'https://server.mobater.com/graphql',
    BACKEND_SELF_ENDPOINT: 'https://server.mobater.com/api/v1/kyc/self',
    BACKEND_MINI_ENDPOINT: 'https://mini.mobater.com',
    THIRDWEB_CLIENT_ID: '109344c426bd8f1b6b104293acb235dc',
  },
  test: {
    BACKEND_ENDPOINT: '',
    BACKEND_GRAPHQL: '',
    BACKEND_SELF_ENDPOINT: '',
    BACKEND_MINI_ENDPOINT: '',
    THIRDWEB_CLIENT_ID: '',
  },
}

export const env = _env["production"]
