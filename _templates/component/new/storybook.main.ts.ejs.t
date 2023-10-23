---
to: packages/<%= name %>/.storybook/main.ts
---
import type { StorybookConfig } from "@storybook/react-webpack5";

import { join, dirname } from "path";

function getAbsolutePath(value: string): any {
  return dirname(require.resolve(join(value, "package.json")));
}
const config: StorybookConfig = {
  stories: ["../src/**/*.mdx", "../src/**/*.stories.@(js|jsx|mjs|ts|tsx)"],
  addons: [
    getAbsolutePath("@storybook/addon-links"),
    getAbsolutePath("@storybook/addon-essentials"),
    getAbsolutePath("@storybook/addon-interactions"),
  ],
  framework: {
    name: getAbsolutePath("@storybook/react-webpack5"),
    options: {},
  },
  docs: {
    autodocs: "tag",
  },
  babel: async (options) => {
    return {
      ...options,
      rootMode: "upward",
      presets: [
        ...(options.presets || []),
        [
          "@babel/preset-react",
          {
            runtime: "automatic",
          },
          "preset-react-jsx-transform",
        ],
      ],
    };
  },
};
export default config;
