<template>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">LazyCar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
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
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Thing4</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
 
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-container">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://www.forbes.com/wheels/wp-content/uploads/2022/05/2022_Toyota_bz4X_review_SEO.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.forbes.com/wheels/wp-content/uploads/2022/05/2022_Toyota_bz4X_review_SEO.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.forbes.com/wheels/wp-content/uploads/2022/05/2022_Toyota_bz4X_review_SEO.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
</div>



<div class="container">
<div class="row">
    
<div class="col-2">
    <label>Make</label> 
    <b-form-select v-model="make" :options="make_options"></b-form-select>
    <label>Model</label>
    <b-form-select v-model="model" :options="model_options[make]"></b-form-select>
</div>
<div class="col-2">
    <label>Condition</label>
    <b-form-select v-model="condition" :options="condition_options"></b-form-select>
    <Label>Max Price</Label>
    <b-form-select v-model="price" :options="price_options"></b-form-select>
   
</div>
<div class="col-2">
    <label>Distance from ZIP</label>
    <b-form-select v-model="distance" :options="distance_options"></b-form-select>
    <Label>ZIP Code</Label>
    <input type="text" class="form-control" id="inputZip" maxlength="5" placeholder="89557">
   
</div>
</div>
</div>


<div class="buttons">
    <button type="button" class="btn btn-primary mt-3 px-2 m-2">Search</button>
<button type="button" class="btn btn-secondary mt-3 px-2 m-2">Advanced Search</button>
</div>

</template>

<script>
export default {
data() {
    return {
    make: null,
    model: null,
    distance: null,
    condition: null,
    price: null,
    make_options:
    [
        { value: null, text: 'All Makes' },
        { value: '1', text: 'Honda' },
        { value: '2', text: 'Toyota' }
    ],
    model_options:
    { 
        null: 
        [
            { value: null, text: 'All Models'}
        ],
        1: 
        [
            {value: null, text: 'All Models'},
            {value: '1', text: 'Civic'},
            {value: '2', text: 'Accord'}
        ],
        2: 
        [
            {value: null, text: 'All Models' },
            {value: '1', text: 'Camry'},
            {value: '2', text: 'Corolla'}
        ]
    },
    distance_options:
    [
        { value: null, text: 'Any' },
        { value: '1', text: '10 miles' },
        { value: '2', text: '20 miles' },
        { value: '3', text: '50 miles' },
        { value: '4', text: '100 miles' },
        { value: '5', text: '300 miles' },
        { value: '6', text: '500 miles' }
    ],
    condition_options:
    [
        { value: null, text: 'New & Used' },
        { value: '1', text: 'New'},
        { value: '2', text: 'Used' }
    ],
    price_options:
    [
        { value: null, text: 'Any Price' },
        { value: '1', text: '$2,000' },
        { value: '2', text: '$4,000' },
        { value: '3', text: '$8,000' },
        { value: '4', text: '$10,000' },
        { value: '5', text: '$15,000' },
        { value: '6', text: '$20,000' },
        { value: '7', text: '$25,000' },
        { value: '8', text: '$30,000' },
        { value: '9', text: '$35,000' },
        { value: '10', text: '$40,000' },
        { value: '11', text: '$45,000' },
        { value: '12', text: '$50,000' },
        { value: '13', text: '$55,000' },
        { value: '14', text: '$60,000' },
        { value: '15', text: '$65,000' },
        { value: '16', text: '$70,000' },
        { value: '17', text: '$75,000' },
        { value: '18', text: '$80,000' }
    ]
   }
}
}
</script>

<style>
.container{
 left: 260px;
 z-index: 2;
 bottom: 500px;

}
.heading{
font:90px bold;
display:block;
justify-content: center;
left: 500px;
top:50px;
}

.buttons{
    bottom:500px;
    left:500px;
    z-index: 2
}

.carousel-container{

    z-index: 1;
}


</style>