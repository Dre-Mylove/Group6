<template>
  <!-- The navbar is rendered once and stays on top of the page -->
  <NavBar />
  <router-view />
  <!-- This is where different routes get injected to file-->
</template>

<script>
import NavBar from "./components/NavBar.vue";

export default {
  name: "App",
  components: {
    SignIn,
    NavBar,
  },
};
</script>

<style></style>
