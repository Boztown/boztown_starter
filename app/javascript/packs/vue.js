/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'vue' %> (and
// <%= stylesheet_pack_tag 'vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.

import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'

Vue.use(TurbolinksAdapter)

/**
 * Globally register all Vue components
 */
var req = require.context('../components', true, /\.vue$/);
req.keys().forEach((key) => {
  const comp = req(key).default;
  if (comp.name) {
    // Globally register component
    Vue.component(comp.name, comp);
  }
});

window.Vue = Vue;
