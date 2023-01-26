<template>
  <div class="CardRate">
    <h2 class="CardRate__heading">Тариф «Название»</h2>
    <CardReviews />
  </div>
</template>

<script setup lang="ts">
import CardReviews from "~/components/CardReviews.vue";
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.CardRate {
  &__heading {
    font-weight: 700;
    font-size: toRem(21);
    line-height: toRem(26);
    color: #2b3347;
  }
}
</style>
