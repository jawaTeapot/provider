<template>
  <div class="RatesNav">
    <div class="RatesNav__slider">
      <button class="RatesNav__nav Rates-prev">
        <svg
          width="9"
          height="16"
          viewBox="0 0 9 16"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M1 1L7.29289 7.29289C7.68342 7.68342 7.68342 8.31658 7.29289 8.70711L1 15"
            stroke-width="2"
            stroke-linecap="round"
          />
        </svg>
      </button>
      <swiper
        :modules="modules"
        :navigation="navigationOptions"
        :breakpoints="breakpoints"
        :slides-per-view="'auto'"
      >
        <swiper-slide>
          <button class="RatesNav__btn">Акции</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Популярное</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Новое</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">С наивысшими оценками</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Рекомендации</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Акции</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Популярное</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Новое</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">С наивысшими оценками</button>
        </swiper-slide>
        <swiper-slide>
          <button class="RatesNav__btn">Рекомендации</button>
        </swiper-slide>
      </swiper>
      <button class="RatesNav__nav Rates-next">
        <svg
          width="9"
          height="16"
          viewBox="0 0 9 16"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M1 1L7.29289 7.29289C7.68342 7.68342 7.68342 8.31658 7.29289 8.70711L1 15"
            stroke-width="2"
            stroke-linecap="round"
          />
        </svg>
      </button>
    </div>
    <button class="RatesNav__button">
      Настроить
      <svg
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M21 7L11 7"
          stroke-width="1.5"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <circle r="2" transform="matrix(-1 0 0 1 5 7)" stroke-width="1.5" />
        <path
          d="M3 17L13 17"
          stroke-width="1.5"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
        <circle cx="19" cy="17" r="2" stroke-width="1.5" />
      </svg>
    </button>
  </div>
</template>

<script setup lang="ts">
import { Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/navigation";

const modules = [Navigation];

const navigationOptions = {
  nextEl: ".Rates-next",
  prevEl: ".Rates-prev",
  disabledClass: "disabled",
};

const breakpoints = {
  1024: {
    slidesPerView: 5,
    spaceBetween: 18,
  },
  708: {
    slidesPerView: 4,
    spaceBetween: 18,
  },
  290: {
    slidesPerView: 3,
    spaceBetween: 12,
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.RatesNav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  @include phone {
    display: block;
  }
  &__slider {
    max-width: toRem(800);
    position: relative;
    @include laptop {
      max-width: toRem(625);
    }
    @include tablet {
      max-width: toRem(440);
    }
    @include phone {
      max-width: 100%;
    }
    .swiper-slide {
      &:nth-child(odd) {
        width: auto !important;
      }
      &:nth-child(even) {
        width: auto !important;
      }
    }
  }
  &__nav {
    width: toRem(24);
    height: toRem(24);
    right: toRem(-28);
    top: 28%;
    display: flex;
    align-items: center;
    justify-content: center;
    position: absolute;
    z-index: 9999;
    @include phone {
      display: none;
    }
    svg {
      stroke: #797e87;
    }
    &:first-child {
      left: toRem(-25);
      svg {
        transform: rotate(180deg);
      }
    }
    &:hover {
      svg {
        stroke: #0098ff;
      }
    }
  }
  &__btn {
    padding: toRem(15) toRem(20);
    border: toRem(1) solid #d8e2e8;
    border-radius: toRem(12);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #2b3347;
    display: flex;
    align-items: center;
    justify-content: center;
    @include phone {
      padding: toRem(8) toRem(12);
      font-size: toRem(14);
      line-height: toRem(18);
    }
    &:hover {
      border: toRem(1) solid #0098ff;
      color: #0098ff;
    }
  }
  &__button {
    padding: toRem(15) toRem(76);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #2b3347;
    border-radius: toRem(12);
    background-color: #ffffff;
    display: flex;
    align-items: center;
    justify-content: center;
    &:hover {
      background-color: #0098ff;
      color: #ffffff;
      svg {
        stroke: #ffffff;
      }
    }
    @include laptop {
      padding: toRem(15) toRem(46);
    }
    @include phone {
      margin-top: toRem(24);
      padding: 0;
      font-size: toRem(14);
      line-height: toRem(18);
      background-color: transparent;
      &:hover {
        background-color: transparent;
        color: #2b3347;
        svg {
          stroke: #0098ff;
        }
      }
    }
    svg {
      margin-left: toRem(20);
      stroke: #0098ff;
      @include phone {
        margin-left: toRem(12);
      }
    }
  }
}
</style>
