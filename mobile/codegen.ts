import type { CodegenConfig } from '@graphql-codegen/cli';

const config: CodegenConfig = {
  schema: 'http://localhost:4545/graphql',
  documents: [
    './graphql/**/*.{ts,tsx}',
    './graphql/**/*.gql',
    './graphql/schema/*.gql',
  ],
  generates: {
    './graphql/__generated__/': {
      // './src/graphql/': {
      preset: 'client',
      presetConfig: {
        // gqlTagName: 'gql',
        fragmentMasking: false,
      },
      // plugins: ['typescript-document-nodes'],
    },
  },
  ignoreNoDocuments: true,
};
export default config;
