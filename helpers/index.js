const utils = require('/opt/nodejs/utils/index');

exports.handler = async (event) => {
    return await utils.someFunction(event);
};
