<template>
  <!-- <div class="carousel">
      <b-carousel
        id="carousel-1"
        v-model="slide"
        :interval="4000"
        controls
        background="#ababab"
        img-width="1920"
        img-height="1080"
        @sliding-start="onSlideStart"
        @sliding-end="onSlideEnd"
      >
       
        <b-carousel-slide
          img-src="https://images2.alphacoders.com/521/521831.jpg"
        ></b-carousel-slide>
  
     
  
        <b-carousel-slide img-src="https://cf-images.us-east-1.prod.boltdns.net/v1/static/1078702682/19fe6727-ffe5-496d-8de9-5e9880eabc94/abd25de3-dddd-4d17-aef8-c82b679a40cc/1920x1080/match/image.jpg"
        >
        </b-carousel-slide>
  
        
        <b-carousel-slide img-src="https://cf-images.us-east-1.prod.boltdns.net/v1/static/1078702682/04800560-c4ce-4e58-9163-da06e28e5752/6607dd3c-8494-4287-82dd-d01defcf5bfb/1920x1080/match/image.jpg"></b-carousel-slide>
  
      </b-carousel>
      <p class="mt-4">
        Slide #: {{ slide }}<br>
        Sliding: {{ sliding }}
      </p>
    </div>-->

    <Carousel>
    <Slide v-for="slide in 10" :key="slide">
      <div class="carousel__item">{{ slide }}</div>
    </Slide>

    <template #addons>
      <Navigation />
      <Pagination />
    </template>
  </Carousel>
    
  </template>
  
  <script>
import { defineComponent } from 'vue'
import { Carousel, Navigation, Pagination, Slide } from 'vue3-carousel'

import 'vue3-carousel/carousel.css'

export default defineComponent({
  name: 'CarouselComp',
  components: {
    Carousel,
    Slide,
    Pagination,
    Navigation,
  },
})
  </script>

  <style>
.carousel{
  top: 300px;
  
}

</style>