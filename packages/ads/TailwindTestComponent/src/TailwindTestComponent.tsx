import { cn } from "@sjoleee/cn";
import { useState } from "react";

interface Props {
  name?: string;
  className?: string;
}

export const TailwindTestComponent = ({ name, className }: Props) => {
  const [clicked, setClicked] = useState(false);

  return (
    <div
      onClick={() => setClicked(!clicked)}
      className={cn("bg-black text-green-500", className, { "bg-blue-500": clicked })}
    >
      {name}
    </div>
  );
};
