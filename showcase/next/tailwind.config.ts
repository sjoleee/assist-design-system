import { dirname } from "path";

import type { Config } from "tailwindcss";

//NOTE: 테스트용
const packagePath = require.resolve("@sjoleee/tailwind-test-component");
const packageDir = dirname(packagePath);

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
    `${packageDir}/**/*.{js,ts,jsx,tsx}`,
  ],
  theme: {
    extend: {
      backgroundImage: {
        "gradient-radial": "radial-gradient(var(--tw-gradient-stops))",
        "gradient-conic": "conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))",
      },
    },
  },
  plugins: [],
};
export default config;
