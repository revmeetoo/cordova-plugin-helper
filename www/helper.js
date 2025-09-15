cordova.define("cordova-plugin-helper.helper", function(require, exports, module) {
    var exec = require("cordova/exec");
    var helper = function () {this.name = "helper";};
    helper.prototype.func01 = function (successCallback, failureCallback) {
    exec(successCallback, failureCallback, "helper", "func01", []);};
    module.exports = new helper();
});
