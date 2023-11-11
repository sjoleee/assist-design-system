interface Props {
  name?: string;
}

export const TailwindTestComponent = ({ name }: Props) => {
  return <div>{name}</div>;
};
