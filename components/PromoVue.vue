<template>
  <section class="promo">
    <div class="promo__bg container">
      <h1 class="promo__heading">
        Ответьте на 4 вопроса и узнайте ваш идеальный тариф
      </h1>
      <button class="promo__btn">Узнать</button>
      <button class="promo__btn" @click="showModal">Показать тарифы</button>
    </div>
    <AgregatorVue v-if="isModalVisible" @close="showModal()" />
  </section>
</template>

<script setup lang="ts">
import { ref } from "vue";

const isModalVisible = ref(false);
function showModal() {
  isModalVisible.value = !isModalVisible.value;
  document.querySelector("body")?.classList.toggle("show-menu");
}
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.promo {
  margin-top: toRem(20);
  @include phone {
    margin-top: toRem(0);
    background: url("@/assets/img/promo-bg.png") no-repeat calc(100% + 52px)
        calc(100% + 54px),
      linear-gradient(96.87deg, #0098ff 0.23%, #39afff 100%);
    background-size: toRem(250) toRem(192), cover;
  }
  &__bg {
    border-radius: toRem(20);
    padding: toRem(110) toRem(80);
    background: url("@/assets/img/promo-bg.png") no-repeat center right,
      linear-gradient(96.87deg, #0098ff 0.23%, #39afff 100%);
    background-size: toRem(500) toRem(410), cover;
    @include laptop {
      background-size: toRem(430) toRem(350), cover;
      background-position: toRem(570) center, center;
    }
    @include tablet {
      background-position: calc(100% + 92px) calc(100% + 94px), center;
    }
    @include phone {
      padding: toRem(40) toRem(0) toRem(134);
      border-radius: 0;
      background: none;
    }
  }
  &__heading {
    font-weight: 800;
    font-size: toRem(34);
    line-height: toRem(43);
    color: #ffffff;
    width: toRem(627);
    margin-bottom: toRem(54);
    @include phone {
      width: auto;
      font-size: toRem(24);
      line-height: toRem(30);
      margin-bottom: toRem(30);
    }
  }
  &__btn {
    border: toRem(1) solid #ffffff;
    border-radius: toRem(12);
    padding: toRem(15) toRem(61);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #ffffff;
    margin-right: toRem(20);
    @include tablet {
      padding: toRem(10) toRem(40);
    }
    @include phone {
      width: 100%;
      margin-right: toRem(0);
      margin-bottom: toRem(12);
      &:last-child {
        margin-bottom: toRem(0);
      }
    }
    &:hover {
      background-color: #ffffff;
      color: #0098ff;
    }
  }
}
</style>
