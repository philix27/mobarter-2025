export const publicPath = (path: string) => {
  const baseUrl = process.env.NEXT_PUBLIC_URL;

  return `${baseUrl}/${path}` || path;
};
