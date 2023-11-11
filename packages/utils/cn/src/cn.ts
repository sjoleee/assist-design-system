import { twMerge } from "tailwind-merge";
import { clsx, ClassValue } from "clsx";

export const cn = (...inputs: ClassValue[]) => twMerge(clsx(inputs));
