<template>
  <div class="NewsCard">
    <div class="NewsCard__bg"></div>
    <div>
      <h3 class="NewsCard__headline">Безлимитный VPN</h3>
      <p class="NewsCard__text">
        Текст про новость о тексте для подзаголовка, где она сокращена
      </p>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.NewsCard {
  margin-bottom: toRem(50);
  width: toRem(380);
  height: toRem(380);
  padding: toRem(32);
  border-radius: toRem(20);
  background-color: #0098ff;
  background-image: url("@/assets/img/news-bg.png");
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
  align-items: flex-end;
  position: relative;
  @include laptop {
    background-image: url("@/assets/img/news-bg-2.png");
    width: toRem(300);
    height: toRem(300);
    padding: toRem(20);
  }
  @include tablet {
    background-image: url("@/assets/img/news-bg-3.png");
    width: toRem(260);
    height: toRem(260);
    padding: toRem(16);
  }
  &:hover {
    box-shadow: toRem(0) toRem(30) toRem(25) rgba(49, 74, 103, 0.2);
  }
  &__bg {
    position: absolute;
    left: 0;
    top: 0;
    width: toRem(380);
    height: toRem(380);
    border-radius: toRem(20);
    background: linear-gradient(
      180deg,
      rgba(0, 115, 192, 0) 38.29%,
      #0078c9 100%
    );
    @include laptop {
      width: toRem(300);
      height: toRem(300);
    }
    @include tablet {
      width: toRem(260);
      height: toRem(260);
    }
  }
  &__headline {
    font-weight: 600;
    font-size: toRem(22);
    line-height: toRem(28);
    color: #ffffff;
    opacity: 0.9;
    @include phone {
      font-size: toRem(20);
      line-height: toRem(25);
    }
  }
  &__text {
    margin-top: toRem(16);
    font-weight: 400;
    font-size: toRem(16);
    line-height: toRem(26);
    color: #ffffff;
    opacity: 0.6;
    @include phone {
      margin-top: toRem(8);
      font-size: toRem(12);
      line-height: toRem(20);
    }
  }
}
</style>
