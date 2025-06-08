import "./comps/theme.css";
import "./comps/globals.css";
import type { Metadata, Viewport } from "next";
import AppProviders from "./comps/providers";

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
};

const Providers = AppProviders as any;
export async function generateMetadata(): Promise<Metadata> {
  const URL = process.env.NEXT_PUBLIC_URL;
  return {
    title: process.env.NEXT_PUBLIC_ONCHAINKIT_PROJECT_NAME,
    other: {
      "fc:frame": JSON.stringify({
        version: process.env.NEXT_PUBLIC_VERSION,
        imageUrl: process.env.NEXT_PUBLIC_IMAGE_URL,
        button: {
          title: `Mobarter Mini-server`,
        },
      }),
    },
  };
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className="bg-background">
        <Providers>{children}</Providers>
      </body>
    </html>
  );
}
