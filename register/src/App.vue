
<template>
  <div>
        <!-- As a link -->
        <b-navbar toggleable="lg" type="dark" variant="danger">
      <b-navbar-brand href="#">Lazy Car</b-navbar-brand>

      <b-nav-item-dropdown right>
        <!-- Using 'button-content' slot -->
        <template #button-content>
          <em>User</em>
        </template>
        <b-dropdown-item href="#">Profile</b-dropdown-item>
        <b-dropdown-item href="#">Sign Out</b-dropdown-item>
      </b-nav-item-dropdown>
    </b-navbar>
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
      <b-form-group id="input-group-2" label="Name:" label-for="input-1">
        <b-form-input
          id="input-1"
          v-model="form.name"
          placeholder="Enter name"
          required
        ></b-form-input>
      </b-form-group>
      <b-form-group id="input-group-2" label="Last Name:" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.lname"
          placeholder="Enter Last Name"
          required
        ></b-form-input>
      </b-form-group>
      <b-form-group
        id="input-group-3"
        label="Email address:"
        label-for="input-3"
        description="We'll never share your email with anyone else."
      >
        <b-form-input
          id="input-3"
          v-model="form.email"
          type="email"
          placeholder="Enter email"
          required
        ></b-form-input>
      </b-form-group>
      <b-calendar
    selected-variant="success"
    today-variant="info"
    nav-button-variant="primary"
  ></b-calendar>
      <b-form-group id="input-group-4" label="State:" label-for="input-4">
        <b-form-select
          id="input-4"
          v-model="form.state"
          :options="states"
          required
        ></b-form-select>
      </b-form-group>
      <b-form-group id="input-group-5" label="Zip Code: " label-for="input-5">
        <b-form-input
          id="input-5"
          v-model="form.zipcode"
          placeholder="Enter Zip Code"
          required
        ></b-form-input>
      </b-form-group>
      <b-form-group id="input-group-6" label="Password:" label-for="input-6">
        <b-form-input
          id="input-6"
          v-model="form.pass"
          placeholder="Enter Password"
          type="password"
          required
        ></b-form-input>
          <input type="checkbox" onclick="ShowPass()">Show Password
      </b-form-group>
      <b-form-group id="input-group-7" label="Repeat Password:" label-for="input-7">
        <b-form-input
          id="input-7"
          v-model="form.rpass"
          placeholder="Enter Password"
          type="password"
          required
        ></b-form-input>
        <input type="checkbox" onclick="ShowRepeatPass()">Show Password
      </b-form-group>

      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
  </div>
</template>

<script lang="ts">
  export default {
    data() {
      return {
        form: {
          name: '',
          lname: '',
          email: '',
          stat: '',
          state: '',
          zipcode: '',
          pass: '',
          rpass: '',
        },
        states: [{ value: null, text: "Choose..."},
        { value: "alabama", text: "Alabama" },
        { value: "alaska", text: "Alaska" },

      ],
        show: true
      }
    },
    methods: {
      onSubmit(event: { preventDefault: () => void }) {
        event.preventDefault()
        alert(JSON.stringify(this.form))
      },
      onReset(event: { preventDefault: () => void }) {
        event.preventDefault()
        // Reset our form values
        this.form = {
        name: '',
        lname: '',
        email: '',
        stat: '',
        state: '',
        zipcode: '',
        pass: '',
        rpass: '',
      };
        // Trick to reset/clear native browser form validation state
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      },
      ShowPass() {
      let x = document.getElementById("input-6") as HTMLInputElement;
        if (x.type === "password") {
          x.type = "text";
        } else {
          x.type = "password";
        }
      },
      ShowRepeatPass() {
      let x = document.getElementById("input-7") as HTMLInputElement;
        if (x.type === "password") {
          x.type = "text";
        } else {
          x.type = "password";
        }
      },
      onContext(ctx: (ctx: any) => void) {
        this.onContext = ctx
      },
    }
  }
</script>