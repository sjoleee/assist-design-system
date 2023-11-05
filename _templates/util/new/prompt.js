const camelToKebabCase = (str) => str.replace(/([a-z0-9])([A-Z])/g, "$1-$2").toLowerCase();

module.exports = {
  prompt: ({ prompter, args }) =>
    prompter
      .prompt({
        type: "input",
        name: "name",
        message: "유틸리티 함수명을 카멜케이스로 입력해주세요.",
      })
      .then(({ name }) => {
        if (!name) throw new Error("함수명을 입력해주세요");

        return {
          name,
          packageName: camelToKebabCase(name),
          args,
        };
      }),
};
