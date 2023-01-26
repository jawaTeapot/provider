<template>
  <div class="AgregatorVue" @click.self="isClose">
    <div class="AgregatorVue__modal">
      <div v-if="currentStep === 1">
        <div class="AgregatorVue__top">
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-span">{{ currentStep }} из 4</div>
        </div>
        <div class="AgregatorVue__content">
          <h1 class="AgregatorVue__content-heading">
            Какой провайдер вам нужен?
          </h1>
          <p class="AgregatorVue__content-text">
            Выберите один или несколько вариантов
          </p>
        </div>
        <div class="AgregatorVue__block">
          <div
            class="AgregatorVue__btn"
            v-for="item in checkboxesProvider"
            :key="item"
          >
            <input
              v-model="item.isChecked"
              id=""
              class="AgregatorVue__checkbox"
              type="checkbox"
              name=""
            />
            {{ item.label }}
          </div>
        </div>
      </div>
      <div v-if="currentStep === 2">
        <div class="AgregatorVue__top">
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-span">{{ currentStep }} из 4</div>
        </div>
        <div class="AgregatorVue__content">
          <h1 class="AgregatorVue__content-heading">Какие услуги вам нужны?</h1>
          <p class="AgregatorVue__content-text">
            Выберите один или несколько вариантов
          </p>
        </div>
        <div class="AgregatorVue__block">
          <div
            class="AgregatorVue__btn"
            v-for="item in checkboxesServices"
            :key="item"
          >
            <input
              v-model="item.isChecked"
              id=""
              class="AgregatorVue__checkbox"
              type="checkbox"
              name=""
            />
            {{ item.label }}
          </div>
        </div>
      </div>
      <div v-if="currentStep === 3">
        <div class="AgregatorVue__top">
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step"></div>
          <div class="AgregatorVue__top-span">{{ currentStep }} из 4</div>
        </div>
        <div class="AgregatorVue__content">
          <h1 class="AgregatorVue__content-heading">
            Какая скорость вам нужна?
          </h1>
          <p class="AgregatorVue__content-text">
            Настройте ползунок в необходимом значении
          </p>
        </div>
        <SliderComponent v-model="value1" :format="format" />
      </div>
      <div v-if="currentStep === 4">
        <div class="AgregatorVue__top">
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-step on"></div>
          <div class="AgregatorVue__top-span">{{ currentStep }} из 4</div>
        </div>
        <div class="AgregatorVue__content">
          <h1 class="AgregatorVue__content-heading">
            Какая стоимость вам нужна?
          </h1>
          <p class="AgregatorVue__content-text">
            Настройте ползунок в необходимом значении
          </p>
        </div>
        <SliderComponent v-model="value2" :format="formatLast" />
      </div>
      <div class="AgregatorVue__flex">
        <button
          v-if="currentStep > 1"
          class="AgregatorVue__button"
          @click="prevStep()"
        >
          <svg
            width="19"
            height="14"
            viewBox="0 0 19 14"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M16.5 7H2.5M2.5 7L7.44402 2M2.5 7L7.44402 12"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
          Назад
        </button>
        <button
          v-if="currentStep < 4"
          class="AgregatorVue__button-next"
          @click="nextStep()"
        >
          Далее
          <svg
            width="19"
            height="14"
            viewBox="0 0 19 14"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M2.5 7H16.5M16.5 7L11.556 2M16.5 7L11.556 12"
              stroke="white"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </button>
        <button v-if="currentStep === 4" class="AgregatorVue__button-next">
          Узнать тариф
          <svg
            width="19"
            height="14"
            viewBox="0 0 19 14"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M2.5 7H16.5M16.5 7L11.556 2M16.5 7L11.556 12"
              stroke="white"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import { defineEmits } from "vue";
import SliderComponent from "~/components/SliderComponent.vue";
const value1 = ref([150, 800]);
const value2 = ref([150, 800]);
const currentStep = ref(1);
function nextStep() {
  if (currentStep.value === 4) return;
  currentStep.value += 1;
}
function prevStep() {
  currentStep.value -= 1;
}

function format(v: number) {
  return `<span>${Math.round(v)}</span> мбит/с`;
}
function formatLast(v: number) {
  return `<span>${Math.round(v)}</span> ₽/мес`;
}
const emit = defineEmits(["close"]);
function isClose() {
  emit("close");
}

const checkboxesProvider = ref([
  {
    label: "Ростелеком",
    isChecked: false,
  },
  {
    label: "Дом.Ру",
    isChecked: false,
  },
  {
    label: "МТС",
    isChecked: false,
  },
  {
    label: "Другое",
    isChecked: false,
  },
]);

const checkboxesServices = ref([
  {
    label: "Домашний интернет",
    isChecked: false,
  },
  {
    label: "Мобильная связь",
    isChecked: false,
  },
  {
    label: "ТВ",
    isChecked: false,
  },
  {
    label: "Видеонаблюдение",
    isChecked: false,
  },
]);
</script>

<style scoped lang="scss">
@import "@/assets/css/_mixins.scss";
.AgregatorVue {
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.3);
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 99999;
  &__modal {
    width: toRem(1180);
    height: toRem(410);
    padding: toRem(45) toRem(80) toRem(50);
    background: #ffffff;
    box-shadow: toRem(0) toRem(50) toRem(80) rgba(49, 74, 103, 0.1);
    border-radius: toRem(20);
    @include laptop {
      width: toRem(940);
      padding: toRem(45) toRem(60) toRem(50);
    }
    @include tablet {
      width: toRem(710);
      padding: toRem(30);
    }
    @include phone {
      width: 100%;
      height: auto;
      padding: toRem(24) toRem(15);
    }
  }
  &__top {
    display: flex;
    align-items: center;
    @include tablet {
      justify-content: space-between;
    }
    &-step {
      width: toRem(220);
      height: toRem(8);
      background: #f3f5f9;
      border-radius: toRem(10);
      margin-right: toRem(16);
      &:nth-child(4) {
        margin-right: toRem(40);
        @include phone {
          margin-right: toRem(14);
        }
      }
      @include laptop {
        width: toRem(171);
        margin-right: toRem(12);
      }
      @include tablet {
        width: toRem(130);
        margin-right: toRem(12);
      }
      @include phone {
        width: toRem(50);
      }
    }
    &-span {
      font-weight: 500;
      font-size: toRem(18);
      line-height: toRem(18);
      color: #444c5a;
      @include tablet {
        font-size: toRem(14);
      }
    }
  }
  &__content {
    margin-top: toRem(40);
    @include phone {
      margin-top: toRem(25);
    }
    &-heading {
      font-weight: 800;
      font-size: toRem(34);
      line-height: toRem(43);
      color: #2b3347;
      @include phone {
        font-size: toRem(24);
        line-height: toRem(30);
      }
    }
    &-text {
      margin-top: toRem(20);
      font-weight: 400;
      font-size: toRem(15);
      line-height: toRem(18);
      color: #a9b3c6;
      @include phone {
        margin-top: toRem(12);
        font-size: toRem(12);
      }
    }
  }

  &__block {
    margin-top: toRem(40);
    display: flex;
    align-items: center;
    @include phone {
      margin-top: toRem(25);
      flex-wrap: wrap;
    }
  }
  &__btn {
    margin-right: toRem(20);
    border: toRem(1) solid #d8e2e8;
    border-radius: toRem(12);
    padding: toRem(15) toRem(20);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #2b3347;
    display: flex;
    align-items: center;
    cursor: pointer;
    @include tablet {
      font-size: toRem(14);
      margin-right: toRem(10);
      padding: toRem(10);
    }
    @include phone {
      margin-bottom: toRem(16);
    }
    &:last-child {
      margin-right: toRem(0);
    }
    &:hover {
      border: toRem(1) solid #0098ff;
      color: #0098ff;
    }
    &:active {
      border: toRem(1) solid #0098ff;
      outline: toRem(1) solid #0098ff;
      color: #0098ff;
    }
  }
  &__checkbox {
    margin-right: toRem(12);
  }
  &__flex {
    margin-top: toRem(41);
    display: flex;
    align-items: center;
    justify-content: flex-end;
  }
  &__button {
    padding: toRem(15) toRem(61);
    border: toRem(1) solid #d8e2e8;
    border-radius: toRem(12);
    font-weight: 600;
    font-size: toRem(16);
    line-height: toRem(20);
    color: #a9b3c6;
    margin-left: toRem(20);
    display: flex;
    align-items: center;
    justify-content: center;
    @include phone {
      padding: toRem(12);
    }
    &:hover {
      border-color: #0098ff;
      color: #0098ff;
      svg {
        stroke: #0098ff;
      }
    }
    svg {
      margin-right: toRem(10);
      stroke: #a9b3c6;
    }
    &-next {
      padding: toRem(15) toRem(61);
      border: toRem(1) solid #0e9eff;
      background: #0e9eff;
      border-radius: toRem(12);
      font-weight: 600;
      font-size: toRem(16);
      line-height: toRem(20);
      color: #ffffff;
      margin-left: toRem(20);
      display: flex;
      align-items: center;
      justify-content: center;
      @include phone {
        padding: toRem(12);
      }
      &:hover {
        background: #1c98ec;
      }
      svg {
        margin-left: toRem(10);
      }
    }
  }
}
.on {
  background-image: url("@/assets/img/step-bg.png");
  background-size: cover;
}
</style>
