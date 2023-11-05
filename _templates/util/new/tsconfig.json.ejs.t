---
to: packages/utils/<%= packageName %>/tsconfig.json
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