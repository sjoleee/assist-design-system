import React from "react";
import type { Meta, StoryObj } from "@storybook/react";

import { TailwindTestComponent } from "../src";

const meta: Meta<typeof TailwindTestComponent> = {
  component: TailwindTestComponent,
};

export default meta;
type Story = StoryObj<typeof TailwindTestComponent>;

export const Primary: Story = {
  render: () => <TailwindTestComponent name="ss" />,
};
