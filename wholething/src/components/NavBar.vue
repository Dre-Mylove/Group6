<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <router-link to="/home" class="nav-link">
        <a class="navbar-brand" href="#">LazyCars</a>
      </router-link>
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
            <router-link to="/finance" class="nav-link">Finance</router-link>
          </li>
          <li class="nav-item">
            <router-link to="/about" class="nav-link">About</router-link>
          </li>
        </ul>
      </div>
      <span class="border border-white px-1 m-2">
        <router-link to="/login" class="nav-link">
          <a class="navbar-brand" href="#">Log in</a>
        </router-link>
      </span>
      <span class="border border-white px-1">
        <router-link to="/" class="nav-link">
          <a class="navbar-brand" href="#">Sign up</a>
        </router-link>
      </span>
    </div>
  </nav>

  <div id="app"></div>
</template>

<script>
export default {
  name: "NavBar",
  data() {
    return {};
  },
};
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
#search {
  display: inline-block;
  vertical-align: top;
}
</style>
