<template>
   <div id="app">
   <div class="wallpaper-register">
   </div>
   <div class="container">
      <div class="row">
         <div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
            <div v-if="!registerActive" class="card login" v-bind:class="{ error: emptyFields }">
               <h1>Login</h1>
               <form class="form-group">
                  <input v-model="emailLogin" type="email" class="form-control" placeholder="Email" required>
                  <input v-model="passwordLogin" type="password" class="form-control" placeholder="Password" required>
                  <input type="submit" class="btn btn-primary" @click="doLogin">
                  <p><a href="#">Forgot your password?</a></p>
               </form>
            </div>

            <div v-else class="card register" v-bind:class="{ error: emptyFields }">
               <h1>Sign Up</h1>
               <form class="form-group">
                  <input v-model="emailReg" type="email" class="form-control" placeholder="Email" required>
                  <input v-model="passwordReg" type="password" class="form-control" placeholder="Password" required>
                  <input v-model="confirmReg" type="password" class="form-control" placeholder="Confirm Password" required>
                  <input type="submit" class="btn btn-primary" @click="doRegister">
                  <p>Already have an account? <a href="#" @click="registerActive = !registerActive, emptyFields = false">Sign in here</a>
                  </p>
               </form>
               
               </div>
            </div>
         </div>
      </div>
  
</div>
</template>


<script>
export default {
  name: 'SignIn',
  data () {
    return {
        
    }
  }
}
</script>

<style>

.wallpaper-register {
   background: url(https://images.pexels.com/photos/925743/pexels-photo-925743.jpeg?cs=srgb&dl=pexels-jo%C3%A3o-jesus-925743.jpg&fm=jpg)
      no-repeat center center;
   background-size: cover;
   height: 100%;
   position: absolute;
   width: 100%;
   z-index: -1;
}

h1 {
   margin-bottom: 1.5rem;
   text-align: center;
}


.error {
   animation-name: errorShake;
   animation-duration: 0.3s;
}

@keyframes errorShake {
   0% {
      transform: translateX(-25px);
   }
   25% {
      transform: translateX(25px);
   }
   50% {
      transform: translateX(-25px);
   }
   75% {
      transform: translateX(25px);
   }
   100% {
      transform: translateX(0);
   }
}


.card {
   padding: 20px;
}



</style>