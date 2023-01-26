<template>
  <div class="OfferRate">
    <h3 class="OfferRate__heading">Тариф «Название»</h3>
    <ul class="OfferRate__ul">
      <li class="OfferRate__li" v-for="item in offerRates" :key="item">
        <span>{{ item }}</span>
      </li>
    </ul>
    <OfferBlocks />
  </div>
</template>

<script setup lang="ts">
import OfferBlocks from "~/components/OfferBlocks.vue";
import { ref } from "vue";

const offerRates = ref([
  "100 мбит/сек",
  "1200 минут / 500 смс / 50 Гб",
  "от 150 каналов",
]);
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.OfferRate {
  &__heading {
    margin: toRem(14) toRem(0) toRem(16);
    font-weight: 700;
    font-size: toRem(21);
    line-height: toRem(26);
    color: #2b3347;
  }
  &__li {
    margin-bottom: toRem(6);
    margin-left: toRem(20);
    color: #0098ff;
    list-style-type: disc;
    span {
      font-weight: 400;
      font-size: toRem(14);
      line-height: toRem(18);
      color: #465270;
    }
    &:last-child {
      margin-bottom: 0;
    }
  }
}
</style>
