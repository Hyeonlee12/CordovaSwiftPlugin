var exec = require('cordova/exec');

exports.test = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'test', [arg0]);
};

exports.frameworkTest = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'frameworkTest', [arg0]);
};

exports.parameterTest = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'parameterTest', [arg0]);
};

exports.successTest = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'successTest', [arg0]);
};

exports.failTest = function (arg0, success, error) {
    exec(success, error, 'SamplePlugin', 'failTest', [arg0]);
};