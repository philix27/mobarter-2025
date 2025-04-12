

export const AppLoading = ({ children }: React.PropsWithChildren) => {
  return (
    <div className="absolute flex h-screen w-screen flex-col items-center justify-center gap-4">
<p>Loading...</p>
      {children}
    </div>
  );
};
