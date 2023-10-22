const toCamelCase = (str) => str.charAt(0).toLowerCase() + str.slice(1);

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
          packageName: toCamelCase(name),
          args,
        };
      }),
};
