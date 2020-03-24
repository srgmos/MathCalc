var exec = require('cordova/exec');

module.exports.sayhello = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'sayHello', [arg0]);
};

module.exports.add = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'add', [arg0]);
};

module.exports.subtract = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'subtract', [arg0]);
};

module.exports.multiply = function (arg0, success, error) {
    exec(success, error, 'MathCalc', 'multiply', [arg0]);
};
