<template>
  <!-- The navbar is rendered once and stays on top of the page -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
    <div class="container-fluid">
      <a class="navbar-brand" href="#">LazyCars</a>
      <div class="mx-auto" style="width: 400px;"></div>
        <div class="collapse navbar-collapse" id="navbarScroll">
          <ul class="navbar-nav">
            <li class="nav-item">
              <router-link to="/HomeView" class="nav-link">Home</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/" class="nav-link ">Finance</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/about" class="nav-link ">About</router-link>
            </li>
          </ul>
        </div>
        <span class="border border-white px-2 m-2">
          <a class="navbar-brand rounded-cirlce " href="#">LogIn</a>
        </span>
        <span class="border border-white px-2">
        <a class="navbar-brand" href="#">Sign Up</a>
        </span>
      </div>
  </nav>
<router-view/> <!-- This is where different routes get injected to file-->

</template>


<script>
  import NavBar from './components/NavBar.vue';
  import SignIn from './components/SignIn.vue';
  import CarCards from './components/CarCards.vue';

  export default {
    name: 'App',
      components: {
        NavBar,
        SignIn,
        CarCards
      }
  }
</script>

<style>


</style>
