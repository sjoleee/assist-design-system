---
to: packages/utils/<%= packageName %>/package.json
---
{
  "name": "@sjoleee/<%= packageName %>",
  "sideEffects": false,
  "version": "0.0.1",
  "author": "sjoleee",
  "license": "ISC",
  "scripts": {
    "prepack": "yarn build",
    "build": "tsup",
    "dev": "yarn run build --watch"
  },
  "main": "./dist/index.js",
  "module": "./dist/index.mjs",
  "types": "./dist/index.d.ts",
  "exports": {
    ".": {
      "types": "./dist/index.d.ts",
      "import": "./dist/index.mjs",
      "require": "./dist/index.js"
    }
  },
  "devDependencies": {
    "@types/react": "^18.2.29",
    "@types/react-dom": "^18.2.14",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "tsup": "^7.2.0",
    "typescript": "^5.2.2"
  },
  "peerDependencies": {
    "react": "^16.8.0 || ^17 || ^18",
    "react-dom": "^16.8.0 || ^17 || ^18"
  }
}