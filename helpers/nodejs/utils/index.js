exports.someFunction = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify('Hello from Lambda Layer'),
  };
};
