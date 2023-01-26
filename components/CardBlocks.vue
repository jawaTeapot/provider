<template>
  <div class="CardBlocks">
    <div class="CardBlocks__block" v-for="item in props.cards" :key="item">
      <img class="CardBlocks__img" :src="item.img" alt="img" />
      <div class="CardBlocks__item">
        <div class="CardBlocks__headline">{{ item.headline }}</div>
        <div class="CardBlocks__text">{{ item.text }}</div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
const props = defineProps({
  cards: Array,
});
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.CardBlocks {
  margin-top: toRem(26);
  &__block {
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
    color: #465270;
  }
  &__text {
    margin-top: toRem(4);
    font-weight: 400;
    font-size: toRem(12);
    line-height: toRem(16);
    color: #585e69;
    opacity: 0.8;
  }
}
</style>
