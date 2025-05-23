import DisplayBank from "./comps/DisplayBank";
const Bank = DisplayBank as any;
export default function App() {
  return (
    <div className="flex flex-col min-h-screen font-sans text-[var(--app-foreground)] mini-app-theme from-[var(--app-background)] to-[var(--app-gray)]">
      <div className="w-full max-w-md mx-auto px-4 py-3">
        <header className="flex justify-between items-center mb-3 h-11">
          <h3>Header Section</h3>
          <Bank />
        </header>
      </div>
    </div>
  );
}
