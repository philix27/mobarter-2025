import type { CodegenConfig } from "@graphql-codegen/cli";

const config: CodegenConfig = {
  schema: "http://localhost:4545/graphql",
  documents: ["./src/**/*.{ts,tsx}", "./src/**/*.gql"],
  generates: {
    "./lib/__generated__/": {
      // './src/graphql/': {
      preset: "client",
      presetConfig: {
        gqlTagName: "gql",
        fragmentMasking: false,
      },
      // plugins: [
      // 	'typescript',
      // 	'typescript-operations',
      // 	'typed-document-node',
      // 	'graphql-codegen-svelte-apollo'
      // ]
      plugins: [
        "typescript",
        "typescript-operations",
        "typed-document-node",
        "typescript-react-apollo",
      ],
    },
  },
  ignoreNoDocuments: true,
};
export default config;
