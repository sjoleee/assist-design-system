---
to: packages/<%= name %>/src/<%= name %>.tsx
---
type Props = {
  name?: string;
};

export const <%= name %> = ({ name }: Props) => {
  return <div>{name}</div>;
};

