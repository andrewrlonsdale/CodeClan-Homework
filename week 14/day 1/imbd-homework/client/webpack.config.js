var config = {
  entry: './src/app.js',
  output: {
    path: './build',
    filename: 'bundle.js'
  },
  devtool: "source-map",
  resolve: {
    extensions: ['.js', '.jsx']
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        loader: 'babel-loader',
        query: {
          presets: ['react']
        }
      }
    ]
  }
};

module.exports = config;
