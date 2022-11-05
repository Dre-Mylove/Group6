<template> 
  <NavBar/>

  <CarCards/>
</template>

<script>
import NavBar from './components/NavBar.vue'
import SignIn from './components/SignIn.vue'
import CarCards from './components/CarCards.vue'


export default {
  name: 'App',
  components: { 
    NavBar, 
    SignIn,
    CarCards,
    }

};
</script>


