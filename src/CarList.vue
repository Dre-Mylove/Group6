<template> 
    <NavBar/>
    <CarCards/>
</template>
  
  <script>
  import NavBar from './components/NavBar.vue'
  import CarCards from './components/CarCards.vue'
  
  
  export default {
    name: 'CarList',
    components: { 
      NavBar, 
      CarCards,
      }
  
  };
  </script>
  