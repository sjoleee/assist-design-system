const pascalToKebabCase = (str) =>
  str.replace(/\.?([A-Z]+)/g, (x, y) => "-" + y.toLowerCase()).replace(/^-/, "");

module.exports = {
  prompt: ({ prompter, args }) =>
    prompter
      .prompt({
        type: "input",
        name: "name",
        message: "컴포넌트명을 파스칼케이스로 입력해주세요.",
      })
      .then(({ name }) => {
        if (!name) throw new Error("컴포넌트명을 입력해주세요");

        return {
          name,
          packageName: pascalToKebabCase(name),
          args,
        };
      }),
};
