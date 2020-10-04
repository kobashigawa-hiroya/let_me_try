const {
  environment
} = require("@rails/webpacker");
const {
  VueLoaderPlugin
} = require('vue-loader')
const vue = require('./loaders/vue')

const webpack = require("webpack");
environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"],
  })
);


const customConfig = require('./custom')
environment.config.merge(customConfig)

module.exports = environment
environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment;