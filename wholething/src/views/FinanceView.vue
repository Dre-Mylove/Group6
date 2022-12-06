<template>
  <div class="finance">
    <!--<h1>This is the finance page</h1>-->
    <Calculator/>
  </div>
</template>

<script>
import Calculator from "@/components/FinCalc.vue";

export default {
  name: "FinanceView",
  components: {
    Calculator
  }
};
</script>
