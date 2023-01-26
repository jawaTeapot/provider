<template>
  <div class="Menu">
    <div class="Menu__left">
      <img class="Menu__logo" src="@/assets/img/logo.svg" alt="logo" />
      <div class="Menu__divider"></div>
      <button class="Menu__btn">г. Москва</button>
      <div class="Menu__headline">Бесплатная консультация</div>
      <a class="Menu__text" href="tel:8 800 301 09 27">8 800 301 09 27</a>
      <div class="Menu__item">
        <input class="Menu__input" type="text" placeholder="Введите название" />
        <button class="Menu__search">
          <svg
            width="18"
            height="18"
            viewBox="0 0 18 18"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <circle
              cx="8.163"
              cy="8.163"
              r="7.163"
              stroke="#2B3347"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M13.0876 13.4976L16.59 16.9999"
              stroke="#2B3347"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </button>
      </div>
      <div class="Menu__divider"></div>
      <div class="Menu__block">
        <div class="Menu__like">
          <div class="Menu__stick">
            <div class="Menu__stick-text">1</div>
          </div>
          <div class="Menu__like-img">
            <svg
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M5.3302 14.0633L9.83748 18.7509C11.0178 19.9785 12.9822 19.9785 14.1625 18.7509L18.6698 14.0633C20.4434 12.2187 20.4434 9.22802 18.6698 7.38344C16.8962 5.53885 14.0206 5.53885 12.247 7.38344V7.38344C12.1122 7.52367 11.8878 7.52367 11.753 7.38344V7.38344C9.97937 5.53885 7.1038 5.53885 5.3302 7.38344C3.5566 9.22802 3.5566 12.2187 5.3302 14.0633Z"
                stroke="#2B3347"
                stroke-width="1.5"
              />
            </svg>
          </div>
        </div>
        <div class="Menu__block-text">Избранное</div>
      </div>
    </div>
    <div class="Menu__right" @click="closeMenu">
      <button class="Menu__right-btn">
        <svg
          width="24"
          height="19"
          viewBox="0 0 24 19"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <rect
            x="4.5752"
            y="-0.0460205"
            width="24"
            height="3"
            rx="1"
            transform="rotate(45 4.5752 -0.0460205)"
            fill="white"
          />
          <rect
            x="2.4541"
            y="16.9246"
            width="24"
            height="3"
            rx="1"
            transform="rotate(-45 2.4541 16.9246)"
            fill="white"
          />
        </svg>
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { defineEmits } from "vue";

const emit = defineEmits(["close"]);
function closeMenu() {
  emit("close");
}
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.Menu {
  width: 100%;
  height: 100%;
  background-color: #ffffff;
  display: flex;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9999;
  &__background {
    background-color: #ffffff;
  }
  &__logo {
    margin-bottom: toRem(19);
    width: toRem(155);
    height: toRem(22);
  }
  &__divider {
    border-bottom: toRem(1) solid #eaedf2;
  }
  &__btn {
    margin-top: toRem(20);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #0098ff;
  }
  &__headline {
    margin-top: toRem(26);
    font-weight: 400;
    font-size: toRem(12);
    line-height: toRem(15);
    color: #9da6b5;
  }
  &__text {
    font-weight: 600;
    font-size: toRem(20);
    line-height: toRem(25);
    text-transform: uppercase;
    color: #2b3347;
  }
  &__item {
    height: toRem(48);
    margin: toRem(20) 0;
    padding-left: toRem(16);
    background: #f3f5f9;
    border: toRem(1) solid #dae2f4;
    border-radius: toRem(25);
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  &__input {
    padding-right: toRem(3);
    &::placeholder {
      font-weight: 400;
      font-size: toRem(12);
      line-height: toRem(15);
      color: #9da6b5;
    }
  }
  &__search {
    width: toRem(48);
    height: toRem(48);
    margin-right: toRem(-1);
    border-radius: toRem(25);
    border: toRem(1) solid #dae2f4;
    background-color: #ffffff;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  &__block {
    margin-top: toRem(20);
    display: flex;
    align-items: center;
    &-text {
      margin-left: toRem(15);
      font-weight: 600;
      font-size: toRem(14);
      line-height: toRem(18);
      color: #2b3347;
    }
  }
  &__like {
    width: toRem(24);
    height: toRem(24);
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
  }
  &__stick {
    position: absolute;
    top: toRem(-5);
    right: toRem(-8);
    width: toRem(18);
    height: toRem(18);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #ffffff;
    &-text {
      width: toRem(14);
      height: toRem(14);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: #0098ff;
      color: #ffffff;
      font-weight: 700;
      font-size: toRem(9);
      line-height: toRem(11);
      text-transform: uppercase;
    }
  }
  &__left {
    width: 100%;
    padding: toRem(26) toRem(15);
  }
  &__right {
    width: toRem(54);
    padding-top: toRem(26);
    background: rgba(0, 37, 62, 0.7);
    display: flex;
    align-items: flex-start;
    justify-content: center;
    &-btn {
      width: toRem(25);
      height: toRem(25);
      display: flex;
      align-items: center;
      justify-content: center;
    }
  }
}
</style>
