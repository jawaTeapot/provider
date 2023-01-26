<template>
  <div class="RatesCard">
    <div>
      <div class="RatesCard__top">
        <div class="RatesCard__top-block">
          <div class="RatesCard__top-logo">
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
          <div class="RatesCard__top-text">Ростелеком</div>
        </div>
        <div class="RatesCard__top-block">
          <button class="RatesCard__top-btn">
            <svg
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <rect
                x="3"
                y="3"
                width="18"
                height="18"
                rx="5"
                stroke-width="1.5"
              />
              <path
                d="M8.3999 16.5L8.3999 13.8"
                stroke-width="1.5"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
              <path
                d="M12 16.5L12 7.5"
                stroke-width="1.5"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
              <path
                d="M15.6001 16.5L15.6001 10.2"
                stroke-width="1.5"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
            </svg>
          </button>
          <button class="RatesCard__top-btn">
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
      </div>
      <CardRate />
      <CardBlocks :cards="cards" />
      <CardEquipment />
      <div class="RatesCard__bottom">
        <div class="RatesCard__bottom-text">790 ₽<span>/мес.</span></div>
        <button class="RatesCard__bottom-btn">Подключить</button>
        <p class="RatesCard__bottom-headline">Подробнее о тарифе</p>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import CardRate from "~/components/CardRate.vue";
import CardBlocks from "~/components/CardBlocks.vue";
import CardEquipment from "~/components/CardEquipment.vue";
import { ref } from "vue";

const cards = ref([
  {
    img: "/img/earth.svg",
    headline: "100 Мбит/с",
    text: "Интернет",
  },
  {
    img: "/img/wink.svg",
    headline: "Wink",
    text: "25 000 фильмов и сериалов",
  },
]);
</script>
<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.RatesCard {
  width: toRem(280);
  margin-bottom: toRem(80);
  background-color: #ffffff;
  border-radius: toRem(20);
  padding: toRem(20);
  cursor: pointer;
  @include laptop {
    width: toRem(300);
  }
  @include tablet {
    width: toRem(260);
  }
  &:hover {
    box-shadow: toRem(0) toRem(30) toRem(50) rgba(49, 74, 103, 0.2);
    @include tablet {
      box-shadow: none;
    }
  }
  &__top {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: toRem(24);
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
      width: toRem(24);
      height: toRem(24);
      &:hover {
        svg {
          stroke: #2b3347;
        }
      }
      &:active {
        svg {
          stroke: #0098ff;
        }
      }
      &:first-child {
        margin-left: toRem(0);
      }
      svg {
        stroke: #aab6cb;
      }
    }
  }
  &__bottom {
    margin-top: toRem(16);
    &-text {
      font-weight: 800;
      font-size: toRem(32);
      line-height: toRem(40);
      color: #2b3347;
      span {
        font-weight: 400;
        font-size: toRem(16);
        line-height: toRem(20);
      }
    }
    &-btn {
      display: block;
      margin: toRem(12) auto toRem(20);
      padding: toRem(15) toRem(68);
      background-color: #0e9eff;
      border-radius: toRem(12);
      font-weight: 600;
      font-size: toRem(16);
      line-height: toRem(20);
      color: #ffffff;
      &:hover {
        background-color: #1c98ec;
      }
      @include tablet {
        padding: toRem(15) toRem(60);
      }
    }
    &-headline {
      text-align: center;
      font-weight: 500;
      font-size: toRem(12);
      line-height: toRem(15);
      color: #2b3347;
      &:hover {
        color: #0098ff;
      }
    }
  }
}
</style>
