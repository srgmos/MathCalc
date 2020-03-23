var exec = require('cordova/exec');

module.exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'coolMethod', [arg0]);
};

module.exports.add = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'add', [arg0]);
};

module.exports.subtract = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'subtract', [arg0]);
};
