<template>
  <div class="SliderComponent">
    <Slider v-model="model" :min="0" :max="1000" :format="props.format" />
    <div class="SliderComponent__block">
      <div
        class="SliderComponent__divider"
        v-for="item of dividers"
        :key="item"
        :class="{
          divider__blue: model[0] <= item && model[1] >= item,
        }"
      ></div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { computed } from "vue";
import Slider from "@vueform/slider";
import "@vueform/slider/themes/default.css";

const props = defineProps({
  modelValue: Array,
  format: Function,
});

const emit = defineEmits(["update:modelValue"]);

const model = computed({
  get() {
    return props.modelValue;
  },
  set(nv) {
    emit("update:modelValue", nv);
  },
});

const dividers = [
  0, 35, 65, 98, 129, 160, 191, 222, 254, 285, 316, 348, 378, 410, 440, 472,
  503, 534, 565, 597, 628, 659, 690, 722, 753, 784, 815, 847, 877, 908, 940,
  971, 1000,
];
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.SliderComponent {
  width: toRem(580);
  margin: toRem(66) auto toRem(0);
  &__block {
    margin-top: toRem(12);
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
  }
  &__divider {
    width: toRem(1);
    height: toRem(4);
    background-color: #d9d9d9;
    &:nth-child(4n + 1) {
      height: toRem(10);
    }
  }
  @include phone {
    width: auto;
    margin-top: toRem(45);
  }
}
.divider__blue {
  background-color: #0098ff;
}
</style>
