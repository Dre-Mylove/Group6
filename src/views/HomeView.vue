<template>
  <div class="about">
    <h1>This is the home page</h1>
  </div>
  
</template>

<script>
// @ is an alias to /src

import SignIn from '/home/dre/SignIn/src/components/SignIn.vue'
import CarCards from '/home/dre/SignIn/src/components/CarCards.vue'

export default {
  name: 'HomeView',
  components: { 
   
    SignIn,
    CarCards,
  }
}
</script>
