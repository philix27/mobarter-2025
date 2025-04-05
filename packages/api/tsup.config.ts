import { defineConfig, Options } from "tsup";

export default defineConfig((options: Options) => ({
  entry: {
    index: "src/index.ts",
  },
  banner: {
    // js: "'use client'",
  },
  sourcemap: true,
  clean: true,
  format: ["cjs", "esm"],
  external: ["js"],
  // external: ["ts"],
  dts: true,
  // bundle: false,
  ...options,
}));
