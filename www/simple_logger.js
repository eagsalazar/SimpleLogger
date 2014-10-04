module.exports = {
  logAtLevel: function (level, message) {
    cordova.exec(function () {}, function () {}, "SimpleLogger", "logAtLevel", [level, message]);
  }
};
