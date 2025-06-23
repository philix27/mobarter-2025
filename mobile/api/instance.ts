import { env } from '@/lib/env'
import axios from 'axios'

export const api = axios.create({
  baseURL: env.BACKEND_MINI_ENDPOINT,
})
