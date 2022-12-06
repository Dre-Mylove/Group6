<template>
  <!-- The navbar is rendered once and stays on top of the page -->
  <NavBar/>
  <router-view/>
  <!-- This is where different routes get injected to file-->
</template>

<script>
import SignIn from "./components/SignIn.vue";
import CarCards from "./components/CarCards.vue";
import NavBar from "@/components/NavBar.vue";
export default {
  name: "App",
  components: {
    SignIn,
    CarCards,
    NavBar,
  },
};
</script>

<style></style>
