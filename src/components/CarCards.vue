<template>
  <div class="cards">
    <div class="card" style="width: 18rem">
      <!-- This is the image displayed in the card -->
      <img
        src="https://file.kelleybluebookimages.com/kbb/base/evox/CP/50481/2022-Jeep-Wrangler-front_50481_032_2400x1800_PBJ.png"
        class="card-img-top"
        alt="..."
      />
      <!--The body of the card to display information about the car-->
      <div class="card-body">
        <h5 class="card-title">Jeep Wrangler</h5>
        <p class="card-text">
          Some quick example text to build on the card title and make up the
          bulk of the card's content.
        </p>
      </div>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">Price $xx,xxx</li>
        <li class="list-group-item">Dealer: placeholder</li>
        <li class="list-group-item">A third item</li>
      </ul>
      <div class="card-body">
        <a href="#" class="card-link">Another link</a>
      </div>
    </div>
  </div>

  <div id="app"></div>
</template>
<!--Name of the component-->
<script>
export default {
  name: "CarCards",
  data() {
    return {};
  },
};
</script>

<!--Style to make the card beautiful-->
<style>
.cards {
  display: block;
  margin-left: auto;

  width: 40%;
  padding-top: 10%;
}
</style>
