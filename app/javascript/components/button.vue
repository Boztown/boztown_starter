<template>
  <button>
    <slot></slot>
  </button>
</template>

<script>
export default {
  name: "Button",
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style>
button {
  background: blue;
  color: white;
  font-size: 2em;
  text-align: center;
}
</style>
