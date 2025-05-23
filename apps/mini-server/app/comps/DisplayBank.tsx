"use client";

import { useGetBanks } from "@repo/hooks";

export default function DisplayBank() {
//   const { data, isLoading } = useGetBanks();
//   if (isLoading) {
//     return <p>Loading...</p>;
//   }
  return (
    <div className="flex flex-col min-h-screen font-sans text-[var(--app-foreground)] mini-app-theme from-[var(--app-background)] to-[var(--app-gray)]">
      <div className="w-full max-w-md mx-auto px-4 py-3">
        <header className="flex justify-between items-center mb-3 h-11">
          <p>Hello guys, something simple is needed</p>

          {/* {data?.map((val, i) => <p key={i}>{val.name}</p>)} */}
        </header>
      </div>
    </div>
  );
}
