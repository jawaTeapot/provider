<template>
  <section class="RatesVue container">
    <RatesNav />
    <div class="RatesVue__slide RatesVue__showcase">
      <button class="RatesVue__showcase-btn btn-prev disabled">
        <svg
          width="18"
          height="14"
          viewBox="0 0 18 14"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M2 7H16M16 7L11.056 2M16 7L11.056 12"
            stroke="#0098FF"
            stroke-width="1.5"
            stroke-linecap="round"
            stroke-linejoin="round"
          />
        </svg>
      </button>
      <swiper
        class="custom"
        :modules="modules"
        :navigation="navigationOptions"
        :breakpoints="breakpoints"
      >
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
        <swiper-slide>
          <RatesCard />
        </swiper-slide>
      </swiper>
      <button class="RatesVue__showcase-btn btn-next disabled">
        <svg
          width="18"
          height="14"
          viewBox="0 0 18 14"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M2 7H16M16 7L11.056 2M16 7L11.056 12"
            stroke="#0098FF"
            stroke-width="1.5"
            stroke-linecap="round"
            stroke-linejoin="round"
          />
        </svg>
      </button>
    </div>
  </section>
</template>

<script setup lang="ts">
import { Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/navigation";
import RatesNav from "~/components/RatesNav.vue";
import RatesCard from "~/components/RatesCard.vue";
const modules = [Navigation];

const navigationOptions = {
  nextEl: ".btn-next",
  prevEl: ".btn-prev",
  disabledClass: "disabled",
};

const breakpoints = {
  1439: {
    slidesPerView: 4,
    spaceBetween: 20,
  },
  1023: {
    slidesPerView: 3,
    spaceBetween: 20,
  },
  767: {
    slidesPerView: 2.5,
    spaceBetween: 20,
  },
  290: {
    slidesPerView: 1.1,
    spaceBetween: 10,
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.RatesVue {
  padding-top: toRem(60);
  @include phone {
    padding: toRem(50) 0 toRem(60);
  }
  &__showcase {
    margin-top: toRem(30);
    position: relative;
    &-btn {
      width: toRem(50);
      height: toRem(50);
      background-color: #ffffff;
      box-shadow: toRem(0) toRem(10) toRem(25) rgb(46 64 91 / 15%);
      border-radius: toRem(30);
      top: 38%;
      right: toRem(-25);
      display: flex;
      align-items: center;
      justify-content: center;
      position: absolute;
      z-index: 9999;
      @include tablet {
        display: none;
      }
      &:first-child {
        left: toRem(-25);
        svg {
          transform: rotate(180deg);
        }
      }
    }
  }
}
</style>
