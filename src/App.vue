<template> 
  <NavBar/>
  <SignIn/>
 
</template>

<script>
import NavBar from './components/NavBar.vue'
import SignIn from './components/SignIn.vue'


export default {
  name: 'App',
  components: { 
    NavBar, 
    SignIn }

};
</script>


