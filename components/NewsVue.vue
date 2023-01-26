<template>
  <section class="NewsVue container">
    <h2 class="NewsVue__heading">Новости</h2>
    <div class="NewsVue__showcase">
      <swiper
        class="custom"
        :modules="modules"
        navigation
        :breakpoints="breakpoints"
        :enabled="false"
      >
        <swiper-slide>
          <NewsCard />
        </swiper-slide>
        <swiper-slide>
          <NewsCard />
        </swiper-slide>
        <swiper-slide>
          <NewsCard />
        </swiper-slide>
      </swiper>
    </div>
  </section>
</template>

<script setup lang="ts">
import NewsCard from "~/components/NewsCard.vue";
import { Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/navigation";

const modules = [Navigation];
const breakpoints = {
  1023: {
    slidesPerView: 3,
    spaceBetween: 20,
  },
  767: {
    slidesPerView: 2.5,
    spaceBetween: 20,
    enabled: true,
  },
  290: {
    slidesPerView: 1.1,
    spaceBetween: 12,
    enabled: true,
  },
};
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.NewsVue {
  padding: toRem(80) toRem(0) toRem(30);
  &__heading {
    font-weight: 800;
    font-size: toRem(32);
    line-height: toRem(40);
    color: #2b3347;
  }
  &__showcase {
    margin-top: toRem(40);
  }
}
</style>
