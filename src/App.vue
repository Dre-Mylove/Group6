<template>
  <!-- The navbar is rendered once and stays on top of the page -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">LazyCars</a>
      <div class="mx-auto" style="width: 400px"></div>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <router-link to="/home" class="nav-link">Home</router-link>
          </li>
          <li class="nav-item">
            <router-link to="" class="nav-link">Finance</router-link>
          </li>
          <li class="nav-item">
            <router-link to="/about" class="nav-link">About</router-link>
          </li>
        </ul>
      </div>
      <span class="border border-white px-2 m-2">
        <router-link to="/login" class="nav-link">
          <a class="navbar-brand rounded-cirlce" href="#">LogIn</a>
        </router-link>
      </span>
      <span class="border border-white px-2">
        <router-link to="/" class="nav-link">
        <a class="navbar-brand" href="#">Sign Up</a>
      </router-link>
      </span>
    </div>
  </nav>
  <router-view />
  <!-- This is where different routes get injected to file-->
  
</template>

<script>
import SignIn from "./components/SignIn.vue";
import CarCards from "./components/CarCards.vue";

export default {
  name: "App",
  components: {
    SignIn,
    CarCards,
  },
};
</script>

<style></style>
