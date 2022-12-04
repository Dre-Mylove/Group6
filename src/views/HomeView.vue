<template>
  <NavBar/>
  <SignIn/>
</template>

<script>
// @ is an alias to /src
import NavBar from '/home/dre/SignIn/src/components/NavBar.vue'
import SignIn from '/home/dre/SignIn/src/components/SignIn.vue'
import CarCards from '/home/dre/SignIn/src/components/CarCards.vue'

export default {
  name: 'HomeView',
  components: { 
    NavBar, 
    SignIn,
    CarCards,
  }
}
</script>
