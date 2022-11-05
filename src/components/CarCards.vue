<template>
    <div class="cards">
<div class="card" style="width: 18rem;">
  <img src="https://media.ed.edmunds-media.com/ford/mustang-mach-e/2021/oem/2021_ford_mustang-mach-e_4dr-hatchback_gt_fq_oem_1_600.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Mustang Mach-E</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Price $xx,xxx</li>
    <li class="list-group-item">Dealer: placeholder</li>
    <li class="list-group-item">A third item</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
</div>

<div id="app">
</div>
</template>

<script>
export default {
  name: 'CarCards',
  data () {
    return {
        
    }
  }
}
</script>

<style>
.cards {
    display: block;
    margin-left: auto;
    
    width: 40%;
    padding-top: 10%;
}
</style>
