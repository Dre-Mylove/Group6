<script>
export default {
  data() {
    return {
      message: ''
    }
  }
}
</script>

<template>
	<span>Enter Review:</span>
  <p style="white-space: pre-line;">{{ message }}</p>
	<textarea v-model="message" placeholder="add review"></textarea>
</template>


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
