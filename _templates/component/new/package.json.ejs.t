---
to: packages/<%= name %>/package.json
---
{
  "name": "@assist/<%= packageName %>",
  "private": true,
  "sideEffects": false,
  "version": "0.0.1",
  "componentName": "<%= packageName %>",
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
    "@babel/core": "^7.23.2",
    "@emotion/react": "^11.11.1",
    "@types/react": "^18.2.29",
    "@types/react-dom": "^18.2.14",
    "babel-loader": "^9.1.3",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "tsup": "^7.2.0",
    "typescript": "^5.2.2"
  },
  "peerDependencies": {
    "@emotion/react": "^11",
    "react": "^16.8.0 || ^17 || ^18",
    "react-dom": "^16.8.0 || ^17 || ^18"
  }
}