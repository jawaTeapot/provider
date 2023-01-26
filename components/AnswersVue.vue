<template>
  <section class="AnswersVue">
    <div class="AnswersVue__top container">
      <h2 class="AnswersVue__heading">Ответы на вопросы</h2>
      <AnswerAccordion />
    </div>
  </section>
</template>

<script setup lang="ts">
import AnswerAccordion from "~/components/AnswerAccordion.vue";
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.AnswersVue {
  padding: toRem(80) toRem(0);
  background-color: #ffffff;
  @include phone {
    padding: toRem(60) toRem(0) toRem(40);
  }
  &__top {
    display: flex;
    justify-content: space-between;
    @include laptop {
      display: block;
    }
  }
  &__heading {
    font-weight: 800;
    font-size: toRem(32);
    line-height: toRem(40);
    color: #2b3347;
    @include laptop {
      margin-bottom: toRem(49);
    }
    @include phone {
      margin-bottom: toRem(22);
      font-size: toRem(22);
      line-height: toRem(28);
    }
  }
}
</style>
