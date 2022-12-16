<template>
  <!--This page was made by clint. please refer to his code for further comments-->
  <div class="dealer image">
    <dealerimage>
      <img src="https://www.walkercdjrwv.com/static/dealer-13302/1070752.png" />
    </dealerimage>
  </div>

  <div class="dealerinfo">
    <dealername>
      <h1>Jeep - Reno</h1>
    </dealername>

    <dealerinfo>
      5660 Main Street, Reno, NV 89000
      <br />
      Phone: (775)-123-4567
      <br />
      Email: contact@jeepreno.com
      <br />
      Website: Jeepreno.com
    </dealerinfo>
    <inventorylink class="info-link">
      <a class="info-link active" aria-current="page" href="#"
        >View Inventory</a
      >
    </inventorylink>

    <div class="user-review-title">
      <h4>User Reviews</h4>
    </div>
  </div>
  <div class="user-reviews">
    <h6>
      <i>John S. &emsp; 11/11/2022 </i>
    </h6>
    Had a pleasant experience purchasing my Jeep
  </div>

  <rating-overall>★★★★★</rating-overall>
  <rating-title>LazyCars Ratings</rating-title>
  <rating-comm>★★★★★</rating-comm>
  <rating-serv>★★★★★</rating-serv>
  <overall-title>Overall </overall-title>
  <serv-title>Service</serv-title>
  <comm-title>Communication</comm-title>
  <div class="box"></div>
</template>

<script>
export default {
  name: "DealerScreen",
  data() {
    return {};
  },
};
</script>

<style>
dealerimage {
  position: absolute;
  top: 40px;
  left: 40px;
}
h1 {
  font-weight: bold;
  font-size: medium;
  text-decoration: underline;
}
dealername {
  position: relative;
  left: 500px;
  top: 40px;
}
dealerinfo {
  position: relative;
  left: 500px;
  top: 50px;
}
inventorylink {
  left: 500px;
  top: 120px;
  font-size: medium;
  text-decoration: underline;
}
rating-overall {
  position: absolute;
  left: 1100px;
  top: 250px;
  font-size: xx-large;
  color: gold;
  z-index: 3;
}
rating-comm {
  position: absolute;
  left: 1100px;
  top: 300px;
  font-size: xx-large;
  color: gold;
  z-index: 3;
}
rating-serv {
  position: absolute;
  left: 1100px;
  top: 350px;
  font-size: xx-large;
  color: gold;
  z-index: 3;
}
img {
  width: 35%;
  height: auto;
  object-fit: contain;
}
.user-reviews {
  top: 300px;
  left: 40px;
  width: 700px;
  border: 1px solid darkgray;
  background-attachment: fixed;
  background-color: lightgray;
  border-radius: 3px;
}
.user-review-title {
  position: absoulte;
  top: 300px;
  left: 40px;
}
rating-title {
  position: absolute;
  left: 1050px;
  top: 200px;
  font-size: large;
  font-weight: bold;
}
comm-title {
  position: absolute;
  left: 960px;
  top: 360px;
  font-size: large;
  font-weight: bold;
}
serv-title {
  position: absolute;
  left: 1025px;
  top: 312px;
  font-size: large;
  font-weight: bold;
}
overall-title {
  position: absolute;
  left: 1025px;
  top: 265px;
  font-size: large;
  font-weight: bold;
}
.box {
  position: absolute;
  left: 930px;
  top: 190px;
  width: 370px;
  height: 250px;
  border: 3px solid black;
  border-radius: 25px;
  z-index: 0;
}
</style>
