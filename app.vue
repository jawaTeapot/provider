<template>
  <HeaderVue />
  <main>
    <PromoVue />
    <RatesVue />
    <OffersVue />
    <NewsVue />
    <AnswersVue />
  </main>
  <FooterVue />
  <!--  <NotFound />-->
</template>

<script setup lang="ts">
import HeaderVue from "~/components/HeaderVue.vue";
import PromoVue from "~/components/PromoVue.vue";
import RatesVue from "~/components/RatesVue.vue";
import OffersVue from "~/components/OffersVue.vue";
import NewsVue from "~/components/NewsVue.vue";
import AnswersVue from "~/components/AnswersVue.vue";
import FooterVue from "~/components/FooterVue.vue";
// import NotFound from "~/components/NotFound.vue";
</script>

<style lang="scss">
@import "@/assets/css/_mixins.scss";
.show-menu {
  overflow-y: hidden;
}
// Бегунок на модалке
.SliderComponent {
  .slider-connect {
    background-color: #0098ff !important;
  }
  .slider-touch-area {
    background-color: #ffffff !important;
    border-radius: 50%;
    width: toRem(8);
    height: toRem(8);
    position: relative;
    top: toRem(6);
    left: toRem(6);
  }
  .slider-handle {
    background-color: #0098ff !important;
    height: toRem(20) !important;
    width: toRem(20) !important;
  }
  .slider-tooltip {
    background-color: transparent !important;
    border: toRem(1) solid transparent !important;
    color: #444c5a !important;
    font-size: toRem(14) !important;
    font-weight: 500 !important;
    line-height: toRem(18) !important;
  }
}

// Каруcель
.NewsVue__showcase {
  @include tablet {
    .swiper-button-next,
    .swiper-button-prev {
      display: none;
    }
  }
}
.disabled {
  opacity: 0;
}
.custom {
  margin: 0 toRem(-30);
  padding: 0 toRem(30);
  @include tablet {
    margin: 0;
    padding: 0;
  }
}
</style>
