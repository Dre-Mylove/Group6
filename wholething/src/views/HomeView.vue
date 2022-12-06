<template>
  <CarouselComp/>
  <div class="home">
    <div class="search">
      <SearchComp />
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

import SignIn from "@/components/SignIn.vue";
import CarCards from "@/components/CarCards.vue";
import SearchComp from "@/components/SearchComp.vue";
import CarouselComp from "@/components/CarouselComp.vue";

export default {
  name: "HomeView",
  components: {
    SignIn,
    CarCards,
    SearchComp,
    CarouselComp,
  },
};
</script>

<style>
.home {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}


</style>
