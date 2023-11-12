---
to: packages/ads/<%= name %>/stories/<%= name %>.stories.tsx
---
import React from "react";
import type { Meta, StoryObj } from "@storybook/react";

import { <%= name %> } from "../src";

const meta: Meta<typeof <%= name %>> = {
  component: <%= name %>,
  title: "<%= name %>/<%= name %>",
};

export default meta;
type Story = StoryObj<typeof <%= name %>>;

export const Primary: Story = {
  render: () => <<%= name %> name="<%= name %>" />,
};
