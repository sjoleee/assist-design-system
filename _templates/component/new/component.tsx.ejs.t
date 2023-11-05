---
to: packages/ads/<%= name %>/src/<%= name %>.tsx
---
interface Props {
  name?: string;
};

export const <%= name %> = ({ name }: Props) => {
  return <div>{name}</div>;
};

