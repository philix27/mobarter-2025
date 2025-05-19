import axios from "axios";

export const api = axios.create({
  baseURL: process.env.EXPO_PUBLIC_MINI_SERVER || 'http://172.20.10.4:4000',
  // baseURL: 'https://api.example.com',
});
