var exec = require('cordova/exec');

exports.test = function (success, error) {
    exec(success, error, 'SamplePlugin', 'test', [null]);
};

exports.frameworkTest = function (success, error) {
    exec(success, error, 'SamplePlugin', 'frameworkTest', [null]);
};

exports.parameterTest = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'parameterTest', [arg0]);
};

exports.successTest = function (success, error) {
    exec(success, error, 'SamplePlugin', 'successTest', [null]);
};

exports.failTest = function (success, error) {
    exec(success, error, 'SamplePlugin', 'failTest', [null]);
};