import { createApp } from 'vue'
import App from './App.vue'
<<<<<<< HEAD
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"
createApp(App).mount('#app')
=======
import CarListVue from './CarList.vue'
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"
import { BootstrapVue3 } from 'bootstrap-vue-3'
import 'bootstrap/dist/css/bootstrap.css'

import router from './router'

createApp(App).use(router).mount('#app')
>>>>>>> about-us/dm
