"use client";

import { useMiniKit } from "@coinbase/onchainkit/minikit";
import { useEffect } from "react";

export default function App() {
  const { setFrameReady, isFrameReady } = useMiniKit();

  useEffect(() => {
    if (!isFrameReady) {
      setFrameReady();
    }
  }, [setFrameReady, isFrameReady]);

  return (
    <div className="flex flex-col min-h-screen font-sans text-[var(--app-foreground)] mini-app-theme from-[var(--app-background)] to-[var(--app-gray)]">
      <div className="w-full max-w-md mx-auto px-4 py-3">
        <header className="flex justify-between items-center mb-3 h-11">
          <p>Hello guys, something simple is needed</p>
        </header>
      </div>
    </div>
  );
}
