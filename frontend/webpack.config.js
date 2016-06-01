const process = require('process');

module.exports = {
    entry: "./js/entry.js",
    output: {
        path: __dirname,
        filename: "bundle.js"
    },
    module: {
        loaders: [
            {
              test: /\.jsx?$/,
              exclude: /(node_Modules|bower_components)/,
              loader: 'babel-loader',
              query: {
                presets: ['es2015']
              }
            }
        ]
    },
    resolveLoader: {
      modulesDirectories: process.env.NODE_PATH.split(":")
    }
};
