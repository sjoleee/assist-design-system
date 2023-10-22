---
to: packages/<%= name %>/src/<%= name %>.tsx
---
type Props = {
  name?: string;
};

const <%= name %> = ({ name }: Props) => {
  return <div>{name}</div>;
};

export default <%= name %>;
