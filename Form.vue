<template>
    <form class="form-floating">
  <input type="email" class="form-control" id="floatingInputValue" placeholder="name@example.com" value="Jane@LazyCars.com">
  <label for="floatingInputValue">Input with value</label>
</form>
<div class="form-floating">
  <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>
</template>

<script>
export default {
  name: 'Form',
  props: {
    msg: String
  }
}
</script>