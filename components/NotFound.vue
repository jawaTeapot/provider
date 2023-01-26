<template>
  <div>
    <HeaderVue />
    <main>
      <div class="NotFound container">
        <div class="NotFound__block">
          <h1 class="NotFound__heading">Ой! Страница не найдена</h1>
          <p class="NotFound__text">
            К сожалению, этот раздел находится на этапе разработки. Попробуйте
            зайти позже, когда он бужет готов.
          </p>
          <button class="NotFound__btn">
            Вернуться на главную
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
    </main>
    <FooterVue />
  </div>
</template>

<script setup lang="ts">
import HeaderVue from "~/components/HeaderVue.vue";
import FooterVue from "~/components/FooterVue.vue";
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.NotFound {
  padding: toRem(183) toRem(0);
  background-image: url("@/assets/img/404-bg.png");
  background-size: toRem(580) toRem(580);
  background-repeat: no-repeat;
  background-position: right center;
  @include phone {
    height: toRem(476);
    padding: toRem(40) toRem(0);
    background-size: toRem(320) toRem(320);
    background-position: center bottom;
  }
  &__block {
    width: toRem(460);
    @include phone {
      width: auto;
    }
  }
  &__heading {
    font-weight: 800;
    font-size: toRem(34);
    line-height: toRem(43);
    color: #2b3347;
    @include phone {
      font-size: toRem(24);
      line-height: toRem(30);
    }
  }
  &__text {
    margin-top: toRem(22);
    font-weight: 400;
    font-size: toRem(16);
    line-height: toRem(30);
    color: #596789;
    @include phone {
      margin-top: toRem(20);
      font-size: toRem(12);
      line-height: toRem(22);
    }
  }
  &__btn {
    margin-top: toRem(40);
    padding: toRem(15) toRem(25);
    background: #0e9eff;
    border-radius: toRem(12);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #ffffff;
    display: flex;
    align-items: center;
    @include phone {
      display: none;
    }
    &:hover {
      background: #1c98ec;
    }
    svg {
      margin-left: toRem(10);
    }
  }
}
:deep(.FooterVue) {
  background-color: #ffffff;
}
</style>
