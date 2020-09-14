const path = require('path')
const TerserPlugin = require('terser-webpack-plugin')

module.exports = {
    mode: 'production',
    target: 'web',
    entry: {
        index: path.resolve(__dirname, './index.js')
    },
    output: {
        path: path.resolve(__dirname, './output', `${Date.now()}`),
        filename: '[chunkhash].js',
    },
    optimization: {
        minimize: true,
        minimizer: [
          new TerserPlugin({
            extractComments: 'all'
          })
        ]
      }
}