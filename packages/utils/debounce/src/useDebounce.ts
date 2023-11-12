import { useEffect, useRef } from "react";

export const useDebounce = <T>(
  callback: (params: T) => void,
  ms: number,
): ((params: T) => void) => {
  const timer = useRef<ReturnType<typeof setTimeout>>();

  const dispatchDebounce = (params: T) => {
    const _params = { ...params };
    if (timer.current) {
      clearTimeout(timer.current);
    }
    const newTimer = setTimeout(() => callback(_params), ms);
    timer.current = newTimer;
  };

  useEffect(() => {
    return () => {
      if (timer.current) {
        clearTimeout(timer.current);
      }
    };
  }, []);

  return dispatchDebounce;
};
