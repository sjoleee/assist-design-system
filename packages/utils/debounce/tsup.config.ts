import { defineConfig } from "tsup";

import pkgJson from "./package.json";

const external = [
  ...Object.keys((pkgJson as any).peerDependencies || {}),
  ...Object.keys((pkgJson as any).dependencies || {}),
];

export default defineConfig({
  entryPoints: ["./src/index.ts"],
  format: ["esm", "cjs"],
  sourcemap: true,
  clean: true,
  dts: true,
  external,
});
