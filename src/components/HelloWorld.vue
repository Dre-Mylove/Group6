<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
   <div class="container-fluid">
     <a class="navbar-brand" href="#">LazyCars</a>
     <div class="mx-auto" style="width: 400px;"></div>
     <div class="collapse navbar-collapse" id="navbarScroll">
       <ul class="navbar-nav">
         <li class="nav-item">
           <router-link to="/" class="nav-link">Home</router-link>
         </li>
         <li class="nav-item">
           <router-link to="/" class="nav-link ">Thing2</router-link>
         </li>
         <li class="nav-item">
           <router-link to="/" class="nav-link ">About</router-link>
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
 #search {
   display: inline-block;
   vertical-align: top;
 }
 </style>