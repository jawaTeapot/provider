<template>
  <div class="AnswerAccordion">
    <div
      v-for="post in posts.post"
      :key="post.id"
      class="AnswerAccordion__item"
    >
      <div class="AnswerAccordion__item-top" @click="open(post)">
        <h3 class="AnswerAccordion__heading">{{ post.title }}</h3>
        <button class="AnswerAccordion__btn">
          <svg
            v-show="!post.isOpen"
            width="18"
            height="19"
            viewBox="0 0 18 19"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <circle
              cx="9"
              cy="9.5"
              r="8"
              stroke="#0098FF"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M6 9.5H12"
              stroke="#0098FF"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M9 6.5L9 12.5"
              stroke="#0098FF"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
          <svg
            v-show="post.isOpen"
            width="18"
            height="19"
            viewBox="0 0 18 19"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <circle
              cx="9"
              cy="9.5"
              r="8"
              stroke="#0098FF"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M6 9.5H12"
              stroke="#0098FF"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </button>
      </div>
      <div v-if="post.isOpen" class="AnswerAccordion__item-bottom">
        <p class="AnswerAccordion__text" v-html="`${post.body}`" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
const posts = ref({
  post: [
    {
      id: 1,
      title: "?????? ?????????????? ???????????? ????????????????-?????????????????? ?? ??. ?????????????",
      body: `?????? ???????????? ????????????????-???????????????????? ???????????????? ?????????? ?? ?????????? ???????? ???? ?????????? provider24.ru, ?????? ???? ???????????????????? ???????????????????? ???????????????? ?? ????. ???????????????????? ???????????? ?????????????????? ?????? ?????????????????????? ?????????????????????? ??????????????????. ?????????????? ???????????????????????? ?????????????????? ????????????, ???????????????? ???????? ?? ??????????????, ???????????????????????? ????????????????-????????????????????????.<br/><br/>
               ???????????????? ???????????? ???? ?????????? ?? ?????????????????? ???????????? ???? ???????????? ??????????????????????.`,
      isOpen: false,
    },
    {
      id: 2,
      title: "?????????? ???????????????? ?????????????????? ?????? ?????????????????",
      body: `???????????????? ?????????????????? ?????????????? ???? ?????????? ????????????????????????. ?????? ????????????, ???????????????? ?????????? ?? ???????????????? ???????????????? ?? ?????????????????? ???????????????????? ?????????? 5 ????????/??. ?????? ?????? ??????????????, ?????? ?? ?????? ?????????? ???????????????????? ?????????? 1 ???????????????????? (????????????????, ???????????????? ?????? ??????????????).<br/><br/>
               ?????? ?????????????????? ?????????????? ?? ???????????????? ?? ???????????????? Full HD (1080p) ?????????????????????? ?????? ?????????????? 10 ????????/??. ???? ?????? ?????????? ?????????????????????? ?????????????????? ?????????????????????????? ??????????, ???????????????? ?????? ???????????????? ?? 4?? (2160p) ??????????????, ?????????????????????? ???????????????? ?????? ???? 25 ???? 40 ????????/??.<br/><br/>
               ?????? ????????????-???????????????????? ?? ?????????????? ?? ?????????????? ???????????????? ?????????????????????? ???????????????? ???? 100 ????????/??.<br/><br/>
               ?????????? ?????????? ?????????????? ?? ??????, ?????? ?????? ???????????? ???????????????????? ???????????????????????? ?????????????????? ?????????? ???????????????????????????? ????????????????????????, ?????? ???????? ???????????????? ?????????????????? ??????????????????????.`,
      isOpen: false,
    },
    {
      id: 3,
      title: "?????????? ???????????????? ?????????? ???????????????? ?????? ???????",
      body: `?????? ?????????? ???????????? ?????? ?????? World of&nbsp;Warcraft (WoW), Dota&nbsp;2, ??&nbsp;League of&nbsp;Legends ???????????????????? ????&nbsp;10&nbsp;????????/??. ??&nbsp;?????????? ???????????? ????????, ????????????????, Fortnite, Overwatch&nbsp;2, Cyberpunk 2077, ?????? ?????????????????????? ???????????????? ????&nbsp;50&nbsp;????????/??.<br/><br/>
               ??&nbsp;???????? ?????????? ???????????????? ?????????? ???????????????? ???????????????????????? ?????????????? ?????????????????? ????????????????. ?????? ?????????? ????&nbsp;?????????????????? ???????????????? ?????????? ???????????? ?????????????????? ??&nbsp;?????????????? ????????????????????????????????. ?????????????? ?????????????????????????? ?????????? ?????????????????????? ???????????? ????&nbsp;?????????? ????????????????????, ????&nbsp;?????? ???????? ???????????????????? ??&nbsp;???????????????? ?????????????????? ?????????????????????? ????????????. ??&nbsp;?????????? ?????????????? ?????? ?????????? ?????????????????????????? ???????????? ????&nbsp;?????????????????? ????&nbsp;???????? 100&nbsp;????????/??.`,
      isOpen: false,
    },
    {
      id: 4,
      title: "?????????? ???????????????????? ?????????????????? ?????????????",
      body: `xDSL (Asymmetric Digital Subscriber Line (?????????????????????????? ???????????????? ?????????????????????? ??????????)&nbsp;&mdash; ???????????????????? ?????????????????????? ?????????????????? ????&nbsp;?????????????? ?????????????????????? ????????????. ????????????????, ?????? ??????????????, ????&nbsp;?????????????????? 30&nbsp;????????/??.<br/><br/>
               FTTB (Fiber To&nbsp;the Building&nbsp;&mdash; ???????????? ????&nbsp;????????)&nbsp;&mdash; ???????????????????? ?????????????????????? ?????????? ???????????????????????????? ?????????? ??????????, ?????????????????????? ????&nbsp;????????. ??&nbsp;???????????????? ?????????????????? ?????????? ???????? (Ethernet-????????????). ????????????????, ?????? ??????????????, ????&nbsp;100&nbsp;????????/??. ????&nbsp;???????????? ??&nbsp;?????????????????????????????????? ????????. ?????? ???????????????? ?????????????????? ?????????? ?????????????????? ????&nbsp;1000&nbsp;????????/??.<br/><br/>
               xPON (Passive optical network, ?????????????????? ???????????????????? ????????)&nbsp;&mdash; ?????? ???????????????????? ???????????????????????????????? ??????????????, ?????????????? ?????????????????? ???????????????????? ?????????????? ????&nbsp;?????????????? ????&nbsp;???????????????? ???????????????? ?????? ?????????????????? ??????????????????????. ???????????? ?????????????????? ?????????? ??&nbsp;????????????????. ?????????? ???????????????? ?????????????????? ?????????? ?????????????????? ????&nbsp;1000&nbsp;????????/?? ?????? ???????????? ???????????????? ??&nbsp;?????????? ?????????? ??????????.`,
      isOpen: false,
    },
  ],
});
function open(post: (typeof posts)["value"]["post"][number]) {
  post.isOpen = !post.isOpen;
}
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.AnswerAccordion {
  width: toRem(780);
  @include laptop {
    margin: toRem(0) auto;
  }
  @include tablet {
    width: auto;
  }
  &__item {
    border-bottom: toRem(1) solid #eaedf2;
    &:first-child {
      .AnswerAccordion__item-top {
        padding-top: toRem(12);
      }
    }
    &:last-child {
      border-bottom: none;
    }
    &-top {
      padding: toRem(32) toRem(0) toRem(34);
      display: flex;
      align-items: center;
      justify-content: space-between;
      &:hover {
        .AnswerAccordion__heading {
          color: #0098ff;
        }
      }
      @include phone {
        padding: toRem(18) toRem(0) toRem(20);
      }
    }
  }
  &__heading {
    font-weight: 600;
    font-size: toRem(20);
    line-height: toRem(25);
    color: #2b3347;
    @include phone {
      width: toRem(250);
      font-size: toRem(16);
      line-height: toRem(20);
    }
  }
  &__btn {
    width: toRem(24);
    height: toRem(24);
    display: flex;
    align-items: center;
    justify-content: center;
  }
  &__text {
    width: toRem(606);
    font-weight: 400;
    font-size: toRem(16);
    line-height: toRem(28);
    color: #596789;
    padding-bottom: toRem(15);
    @include phone {
      width: auto;
      font-size: toRem(12);
      line-height: toRem(20);
    }
  }
}
</style>
