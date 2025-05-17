import { defineConfig, Options } from 'tsup';

export default defineConfig((options: Options) => ({
  entry: {
    index: 'src/index.ts',
  },
  banner: {
    js: "'use client'",
  },
  sourcemap: true,
  clean: true,
  format: ['cjs', 'esm'],
  // external: ['js', 'tsx', 'jsx'],
  minify: true,
  external: ['react'],
  splitting: false,
  // dts: true,
  target: 'es2020',
  // bundle: false,
  ...options,
}));

// "target": "es2020",
