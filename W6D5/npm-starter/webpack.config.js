const path = require('path')

module.exports = {
  entry: './js/entry.jsx',
  output: {
    path: path.resolve(__dirname),
    filename: "./js/bundle.jsx"
  },
  module: {
    rules: [
      {
        test: [/\.jsx?$/], // Specifies file types to transpile
        exclude: /(node_modules)/, // Leaves dependencies alone
        loader: 'babel-loader', // Sets Babel as the transpiler
        query: {
          presets: ['env', 'react'] // Tells Babel what syntaxes to translate
        }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: [".js", ".jsx", "*"]
  }
}
