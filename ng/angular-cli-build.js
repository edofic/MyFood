/* global require, module */

var Angular2App = require('angular-cli/lib/broccoli/angular2-app');

module.exports = function(defaults) {
  return new Angular2App(defaults, {
    vendorNpmFiles: [
      '@angular/**/*.+(js|js.map)',
      'angularfire2/**/*.js',
      'moment/**/*.js',
      'es6-shim/es6-shim.js',
      'firebase/lib/*.js',
      'reflect-metadata/**/*.+(js|js.map)',
      'rxjs/**/*.+(js|js.map)',
      'systemjs/dist/system-polyfills.js',
      'systemjs/dist/system.src.js',
      'zone.js/dist/**/*.+(js|js.map)'
    ]
  });
};
