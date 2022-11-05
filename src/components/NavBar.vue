<template>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <div class="container-fluid">
    <a class="navbar-brand" href="#">LazyCars</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="mx-auto" style="width: 400px;"></div>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Thing1</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Things2</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Thing3</a>
        </li>
      </ul>
    </div>
  </div>

</nav>

<div id="app">



</div>
</template>

<script>
export default {
  name: 'NavBar',
  data() {
      return {

      } 
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: white;
}

nav {
  overflow: hidden;
  position: fixed; /* Set the navbar to fixed position */
  top: 0; /* Position the navbar at the top of the page */
  width: 100%; /* Full width */
}




</style>
