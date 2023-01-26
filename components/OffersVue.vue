<template>
  <section class="offersVue">
    <div class="container">
      <h2 class="offersVue__heading">Предложения месяца</h2>
      <div class="offersVue__showcase offersVue__slider">
        <button class="offersVue__showcase-btn offer-prev disabled">
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
          :modules="modules"
          :navigation="navigationOptions"
          :breakpoints="breakpoints"
        >
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
          <swiper-slide>
            <OffersCard />
          </swiper-slide>
        </swiper>
        <button class="offersVue__showcase-btn offer-next disabled">
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
    </div>
  </section>
</template>

<script setup lang="ts">
import OffersCard from "~/components/OffersCard.vue";
import { Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/navigation";

const modules = [Navigation];

const navigationOptions = {
  nextEl: ".offer-next",
  prevEl: ".offer-prev",
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
.offersVue {
  height: toRem(480);
  padding: toRem(80) toRem(0) toRem(108);
  background-color: #ffffff;
  @include tablet {
    height: auto;
    padding: toRem(60) toRem(0);
  }
  &__heading {
    font-weight: 800;
    font-size: toRem(32);
    line-height: toRem(40);
    color: #2b3347;
    @include phone {
      font-size: toRem(22);
      line-height: toRem(28);
    }
  }
  &__showcase {
    margin-top: toRem(40);
    position: relative;
    @include phone {
      margin-top: toRem(20);
    }
    &-btn {
      width: toRem(50);
      height: toRem(50);
      background-color: #ffffff;
      box-shadow: toRem(0) toRem(10) toRem(25) rgb(46 64 91 / 15%);
      border-radius: toRem(30);
      top: toRem(65);
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
