module.exports = {
    entry: "./public/js/entry.js",
    output: {
        path: __dirname,
        filename: "bundle.js"
    },
    module: {
        loaders: [
            {
              test: /\.jsx?$/,
              exclude: /(node_Modules|bower_components)/,
              loader: 'babel',
              query: {
                presets: ['es2015']
              }
            }
        ]
    }
};
