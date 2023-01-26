<template>
  <div class="OfferBlocks">
    <div class="OfferBlocks__item" v-for="item in items" :key="item">
      <img class="OfferBlocks__img" :src="item.img" alt="img" />
      <div>
        <div class="OfferBlocks__headline">{{ item.headline }}</div>
        <div class="OfferBlocks__text">{{ item.text }}</div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";

const items = ref([
  {
    img: "/img/earth-1.svg",
    headline: "100 Мбит/с",
    text: "Интернет",
  },
  {
    img: "/img/earth-2.svg",
    headline: "500 минут",
    text: "Мобильная связь",
  },
  {
    img: "/img/wink-1.svg",
    headline: "Wink",
    text: "25 000 фильмов и сериалов",
  },
]);
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.OfferBlocks {
  display: none;
  &__item {
    display: flex;
    align-items: flex-start;
    margin-bottom: toRem(16);
  }
  &__img {
    width: toRem(24);
    height: toRem(24);
    margin-right: toRem(12);
  }
  &__headline {
    font-weight: 600;
    font-size: toRem(14);
    line-height: toRem(18);
    color: #ffffff;
  }
  &__text {
    margin-top: toRem(4);
    font-weight: 400;
    font-size: toRem(12);
    line-height: toRem(16);
    color: #ffffff;
    opacity: 0.8;
  }
}
</style>
