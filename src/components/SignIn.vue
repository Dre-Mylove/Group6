<template>
  <!--This component is the sign in component-->
  <div id="app"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
        <div
          v-if="!registerActive"
          class="card login"
          v-bind:class="{ error: emptyFields }"
        >
          <!--Sign in component-->
          <h1>Login</h1>
          <form class="form-group">
            <span class="m-2">
              <input
                v-model="emailLogin"
                type="email"
                class="form-control"
                placeholder="Email"
                required
              />
            </span>
            <span class="m-2">
              <input
                v-model="passwordLogin"
                type="password"
                class="form-control"
                placeholder="Password"
                required
              />
            </span>
            <input type="submit" class="btn btn-primary" @click="doLogin" />
            <p><a href="#">Forgot your password?</a></p>
          </form>
        </div>

        <div v-else class="card register" v-bind:class="{ error: emptyFields }">
          <h1>Sign Up</h1>
          <!--Sign up component-->
          <form class="form-group">
            <input
              v-model="emailReg"
              type="email"
              class="form-control"
              placeholder="Email"
              required
            />
            <input
              v-model="passwordReg"
              type="password"
              class="form-control"
              placeholder="Password"
              required
            />
            <input
              v-model="confirmReg"
              type="password"
              class="form-control"
              placeholder="Confirm Password"
              required
            />
            <input type="submit" class="btn btn-primary" @click="doRegister" />
            <p>
              Already have an account?
              <a
                href="#"
                @click="
                  (registerActive = !registerActive), (emptyFields = false)
                "
                >Sign in here</a
              >
            </p>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<!--Component name-->
<script>
export default {
  name: "SignIn",
  data() {
    return {};
  },
};
</script>

<!--Style-->
<style scoped>
.emailLogin {
  bottom: margin 10px;
}
.container {
  margin-top: 200px;
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
