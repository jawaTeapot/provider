<template>
  <div class="OffersCard">
    <div class="OffersCard__top">
      <div class="OffersCard__top-block">
        <div class="OffersCard__top-logo">
          <svg
            width="42"
            height="42"
            viewBox="0 0 42 42"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <rect width="42" height="42" rx="8" fill="#F3F7FE" />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M24.5865 31.3335C21.0578 27.9201 19.2934 26.2134 19.2933 26.2135L15.8422 29.6268C15.4872 30.095 15.5789 30.7623 16.0471 31.1174C16.232 31.2576 16.4578 31.3335 16.6899 31.3335C16.6957 31.3335 16.7015 31.3335 16.7073 31.3335C19.3337 31.3335 21.9601 31.3335 24.5865 31.3335Z"
              fill="#FF4F12"
            />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M28 17.68L20.32 10L16.0321 14.4666C15.4981 15.0228 15.2 15.7639 15.2 16.5349L15.2 29.6267C15.2 30.5693 15.9641 31.3334 16.9066 31.3334C16.3227 31.3334 15.8493 30.86 15.8493 30.2761C15.8493 29.995 15.9612 29.7254 16.1604 29.527"
              fill="#7800FF"
            />
          </svg>
        </div>
        <div class="OffersCard__top-text">Ростелеком</div>
      </div>
      <button class="OffersCard__top-btn">
        <svg
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M4.49648 13.1384L9.82983 18.7263C11.0117 19.9645 12.9883 19.9645 14.1702 18.7263L19.5035 13.1384C21.4988 11.0478 21.4988 7.65842 19.5035 5.56789C17.5082 3.47737 14.2732 3.47737 12.2779 5.5679V5.5679C12.1266 5.72646 11.8734 5.72646 11.7221 5.5679V5.5679C9.72679 3.47737 6.49177 3.47737 4.49647 5.5679C2.50117 7.65842 2.50118 11.0478 4.49648 13.1384Z"
            stroke-width="1.5"
          />
        </svg>
      </button>
    </div>
    <OffersRate />
    <div class="OffersCard__price">
      <div class="OffersCard__price-text">790 ₽<span>/мес.</span></div>
      <button class="OffersCard__price-btn">
        <svg
          width="18"
          height="14"
          viewBox="0 0 18 14"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M2 7H16M16 7L11.056 2M16 7L11.056 12"
            stroke="white"
            stroke-width="1.5"
            stroke-linecap="round"
            stroke-linejoin="round"
          />
        </svg>
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import OffersRate from "~/components/OffersRate.vue";
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.OffersCard {
  width: toRem(280);
  padding: toRem(20);
  border: toRem(1) solid #0098ff;
  border-radius: toRem(20);
  cursor: pointer;
  position: relative;
  @include laptop {
    width: toRem(300);
  }
  @include tablet {
    width: toRem(260);
    background: #0098ff;
    .OffersCard__top-text {
      color: #ffffff;
    }
    .OffersCard__top-btn {
      svg {
        stroke: #ffffff;
      }
    }
    .OffersCard__price {
      display: flex;
    }
    :deep(.OfferRate__heading) {
      color: #ffffff;
    }
    :deep(.OfferRate__ul) {
      display: none;
    }
    :deep(.OfferBlocks) {
      display: block;
    }
  }
  @include phone {
    box-shadow: none;
  }
  &__top {
    display: flex;
    align-items: center;
    justify-content: space-between;
    &-block {
      display: flex;
      align-items: center;
    }
    &-logo {
      margin-right: toRem(12);
    }
    &-text {
      font-weight: 600;
      font-size: toRem(14);
      line-height: toRem(18);
      color: #2b3347;
    }
    &-btn {
      margin-left: toRem(12);
      &:first-child {
        margin-left: 0;
      }
      svg {
        width: toRem(24);
        height: toRem(24);
        stroke: #aab6cb;
      }
    }
  }
  &__price {
    display: none;
    align-items: center;
    justify-content: space-between;
    &-text {
      font-weight: 800;
      font-size: toRem(32);
      line-height: toRem(40);
      color: #ffffff;
      span {
        font-weight: 400;
        font-size: toRem(16);
        line-height: toRem(20);
      }
    }
  }
  &:hover {
    background: #0098ff;
    .OffersCard__top-text {
      color: #ffffff;
    }
    .OffersCard__top-btn {
      svg {
        stroke: #ffffff;
      }
    }
    .OffersCard__price {
      display: flex;
    }
    :deep(.OfferRate__heading) {
      color: #ffffff;
    }
    :deep(.OfferRate__ul) {
      display: none;
    }
    :deep(.OfferBlocks) {
      display: block;
    }
  }
}
</style>
