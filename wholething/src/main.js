import { createApp } from 'vue'
import App from './App.vue'
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"
import { BootstrapVue3 } from 'bootstrap-vue-3'
import 'bootstrap/dist/css/bootstrap.css'

import router from './router'

const app = createApp(App)
app.use(BootstrapVue3)
app.use(router)
app.mount('#app')
