<template>
  <header class="header__background">
    <div class="header container">
      <div class="header__blocks">
        <img class="header__logo" src="@/assets/img/logo.svg" alt="logo" />
        <div class="header__blocks-block">
          <svg
            class="header__location"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M20 10.9167C20 16.3445 13.6 22 12 22C10.4 22 4 16.3445 4 10.9167C4 6.54441 7.58172 3 12 3C16.4183 3 20 6.54441 20 10.9167Z"
              stroke-width="1.5"
            />
            <circle
              r="3"
              transform="matrix(-1 0 0 1 12 10.5)"
              stroke-width="1.5"
            />
          </svg>
          <button class="header__btn">г. Москва</button>
        </div>
      </div>
      <div class="header__blocks">
        <div class="header__blocks-block">
          <div class="header__circle">
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
                stroke-width="1.5"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
              <path
                d="M13.0876 13.4976L16.59 16.9999"
                stroke-width="1.5"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
            </svg>
          </div>
          <div class="header__circle">
            <div class="header__stick">
              <div class="header__stick-secondary">1</div>
            </div>
            <svg
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M5.3302 14.0633L9.83748 18.7509C11.0178 19.9785 12.9822 19.9785 14.1625 18.7509L18.6698 14.0633C20.4434 12.2187 20.4434 9.22802 18.6698 7.38344C16.8962 5.53885 14.0206 5.53885 12.247 7.38344V7.38344C12.1122 7.52367 11.8878 7.52367 11.753 7.38344V7.38344C9.97937 5.53885 7.1038 5.53885 5.3302 7.38344C3.5566 9.22802 3.5566 12.2187 5.3302 14.0633Z"
                stroke-width="1.5"
              />
            </svg>
          </div>
        </div>
        <div class="header__item">
          <div class="header__item-top">Бесплатная консультация</div>
          <a class="header__item-bottom" href="tel:8 800 301 09 27"
            >8 800 301 09 27</a
          >
        </div>
        <button class="header__menu" @click="showMenu">
          <svg
            width="24"
            height="19"
            viewBox="0 0 24 19"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <rect width="24" height="3" rx="1" fill="#2B3347" />
            <rect y="8" width="24" height="3" rx="1" fill="#2B3347" />
            <rect y="16" width="24" height="3" rx="1" fill="#2B3347" />
          </svg>
        </button>
      </div>
    </div>
    <Menu v-if="isMenuVisible" @close="showMenu()" />
  </header>
</template>

<script setup lang="ts">
import Menu from "~/components/Menu.vue";
import { ref } from "vue";

const isMenuVisible = ref(false);
function showMenu() {
  isMenuVisible.value = !isMenuVisible.value;
  document.querySelector("body")?.classList.toggle("show-menu");
}
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: toRem(26);
  position: relative;
  &__background {
    background-color: #ffffff;
  }
  &__menu {
    display: none;
    @include tablet {
      display: block;
    }
  }
  &__blocks {
    display: flex;
    align-items: center;
    &-block {
      display: flex;
      align-items: center;
      cursor: pointer;
      &:hover {
        .header__location {
          stroke: #0098ff;
        }
      }
      @include tablet {
        display: none;
      }
    }
  }
  &__logo {
    width: toRem(280);
    height: toRem(37);
    margin-right: toRem(40);
    @include phone {
      width: toRem(155);
      height: toRem(22);
      margin-right: 0;
    }
  }
  &__location {
    margin-right: toRem(12);
    stroke: #848da5;
  }
  &__btn {
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #0098ff;
  }
  &__circle {
    width: toRem(48);
    height: toRem(48);
    border-radius: 50%;
    border: toRem(1) solid #edf0f7;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: toRem(18);
    position: relative;
    svg {
      stroke: #2b3347;
    }
    &:hover {
      svg {
        stroke: #0098ff;
      }
    }
    &:nth-child(2) {
      margin-right: toRem(28);
    }
  }
  &__stick {
    position: absolute;
    top: toRem(5);
    right: toRem(4);
    width: toRem(20);
    height: toRem(20);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #ffffff;
    &-secondary {
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
  &__item {
    @include tablet {
      display: none;
    }
    &-top {
      font-weight: 400;
      font-size: toRem(12);
      line-height: toRem(15);
      color: #9da6b5;
    }
    &-bottom {
      font-weight: 600;
      font-size: toRem(20);
      line-height: toRem(25);
      text-transform: uppercase;
      color: #2b3347;
    }
  }
}
</style>
