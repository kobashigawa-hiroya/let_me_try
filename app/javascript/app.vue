<template>
  <v-app id="app">
    <div>
      <p>{{ message }}</p>
    </div>
    <v-tabs>
      <v-tab>Item One</v-tab>
      <v-tab>Item Two</v-tab>
      <v-tab>Item Three</v-tab>
    </v-tabs>
  </v-app>
</template>

<script>
export default {
  data: function() {
    return {
      message: "let roulette!",
    };
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
  color: blue;
  font-weight: 500;
}
</style>
