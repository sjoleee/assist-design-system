---
to: packages/ads/<%= name %>/tsconfig.json
---
{
  "extends": "../../../tsconfig.json",
  "compilerOptions": {
    "isolatedModules": true,
    "declaration": true,
    "jsx": "react-jsx",
  },
  "include": ["src"]
}