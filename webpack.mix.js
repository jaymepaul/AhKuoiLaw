const mix = require('laravel-mix');
// eslint-disable-next-line import/no-extraneous-dependencies
const StyleLintPlugin = require('stylelint-webpack-plugin');

if (process.env.NODE_ENV === 'development') {
  // Setup linting
  mix.webpackConfig({
    module: {
      rules: [
        {
          enforce: 'pre',
          test: /\.(js|vue)$/,
          exclude: /node_modules/,
          loader: 'eslint-loader',
        },
      ],
    },
    plugins: [
      new StyleLintPlugin({
        context: 'themes/ahkuoi/src/',
        files: ['**/*.{scss,vue}'],
      }),
    ],
    devtool: 'inline-source-map',
    watchOptions: {
      aggregateTimeout: 2000,
      poll: 500,
      ignored: /node_modules/,
    },
  });
  mix.sourceMaps();
}

mix.js('themes/ahkuoi/src/js/app.js', 'themes/ahkuoi/dist/')
  .sass('themes/ahkuoi/src/scss/app.scss', 'themes/ahkuoi/dist/')
  .options({ processCssUrls: true });

if (process.env.NODE_ENV === 'production') {
  mix.minify('themes/ahkuoi/dist/app.css')
    .minify('themes/ahkuoi/dist/app.js');
}

mix.copyDirectory('themes/ahkuoi/src/images', 'themes/ahkuoi/dist/images/');
mix.copyDirectory('themes/ahkuoi/src/fonts', 'themes/ahkuoi/dist/fonts/');

mix.setPublicPath('themes/ahkuoi/dist');
mix.setResourceRoot('/resources/themes/ahkuoi/dist/');
