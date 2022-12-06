<template>
  <h1>
    <br>
    About Us
  </h1>

  <body>
    <br>
    <h5>
          LazyCar is powered by Aaron Bartee, Clint Vega, Deandre Mylove, Lauren Feldman, and Melanie Bazgan
    </h5>

  </body>
  <NavBar/>
  <HeaderTest/>
  <FormTest/>
  <BlockTitle/>
</template>

<script>
import NavBar from './components/HelloWorld.vue'
import HeaderTest from './components/about-us.vue'
import FormTest from './components/TitleForm.vue'
import BlockTitle from './components/TitleBlock.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    HeaderTest,
    FormTest,
    BlockTitle,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
