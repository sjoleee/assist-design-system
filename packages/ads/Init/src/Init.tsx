type Props = {
  name?: string;
};

export const Init = ({ name }: Props) => {
  return <div>{name}</div>;
};
