<template>
  <div class="CardReviews">
    <div
      class="CardReviews__img"
      v-for="item of 5"
      :class="{ 'CardReviews__img-active': item <= starsCount }"
      :key="item"
    >
      <svg
        width="16"
        height="16"
        viewBox="0 0 16 16"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M7.14319 1.42372C7.53185 0.777902 8.46815 0.777901 8.85681 1.42372L10.4148 4.01261C10.5545 4.24463 10.7822 4.41009 11.046 4.47119L13.9896 5.15294C14.724 5.32301 15.0133 6.21348 14.5192 6.78269L12.5385 9.06447C12.3609 9.26896 12.2739 9.53669 12.2974 9.80646L12.5586 12.8167C12.6238 13.5676 11.8663 14.118 11.1723 13.8239L8.39009 12.6453C8.14076 12.5396 7.85924 12.5396 7.60991 12.6453L4.82773 13.8239C4.1337 14.118 3.37622 13.5676 3.44139 12.8167L3.70264 9.80646C3.72605 9.53669 3.63906 9.26896 3.46155 9.06447L1.48082 6.78269C0.986711 6.21349 1.27604 5.32301 2.01036 5.15295L4.95399 4.47119C5.2178 4.4101 5.44555 4.24463 5.58517 4.01261L7.14319 1.42372Z"
        />
      </svg>
    </div>
    <button class="CardReviews__btn">Отзывы</button>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
const starsCount = ref(4);
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.CardReviews {
  margin-top: toRem(12);
  display: flex;
  align-items: center;
  &__img {
    margin-left: toRem(5);
    svg {
      fill: #e2e8f3;
    }
    &:first-child {
      margin-left: toRem(0);
    }
    &-active {
      svg {
        fill: #0098ff;
      }
    }
  }
  &__btn {
    margin-left: toRem(12);
    font-weight: 500;
    font-size: toRem(12);
    line-height: toRem(16);
    color: #0098ff;
    opacity: 0.8;
    &:hover {
      text-decoration: underline;
    }
  }
}
</style>
