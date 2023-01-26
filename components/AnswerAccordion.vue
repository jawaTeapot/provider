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
      title: "Как выбрать лучший интернет-провайдер в г. Москва?",
      body: `Для выбора интернет-провайдера выберете город и адрес дома на сайте provider24.ru, где вы планируете установить интернет и ТВ. Посмотреть список доступных для подключения поставщиков интернета. Выбрать интересующие параметры тарифы, сравнить цены и условия, предлагаемые интернет-провайдерами.<br/><br/>
               Оставить заявку на сайте и дождаться звонка от нашего специалиста.`,
      isOpen: false,
    },
    {
      id: 2,
      title: "Какая скорость интернета мне подойдет?",
      body: `Скорость интернета зависит от ваших потребностей. Для работы, отправки почты и обычного сёрфинга в интернете достаточно будет 5 Мбит/с. Это при условии, что у вас будет подключено всего 1 устройство (например, смартфон или ноутбук).<br/><br/>
               Для просмотра фильмов и сериалов в качестве Full HD (1080p) потребуется уже минимум 10 Мбит/с. Но для более комфортного просмотра качественного видео, особенно для контента в 4К (2160p) формате, потребуется скорость уже от 25 до 40 Мбит/с.<br/><br/>
               Для онлайн-трансляций и стримов в высоком качестве потребуется скорость до 100 Мбит/с.<br/><br/>
               Также нужно помнить о том, что чем больше количество подключаемых устройств будет использоваться одновременно, тем выше скорость интернета потребуется.`,
      isOpen: false,
    },
    {
      id: 3,
      title: "Какой интернет лучше подходит для игр?",
      body: `Для таких онлайн игр как World of&nbsp;Warcraft (WoW), Dota&nbsp;2, и&nbsp;League of&nbsp;Legends достаточно до&nbsp;10&nbsp;Мбит/с. В&nbsp;более мощные игры, например, Fortnite, Overwatch&nbsp;2, Cyberpunk 2077, уже потребуется скорость от&nbsp;50&nbsp;Мбит/с.<br/><br/>
               В&nbsp;наше время набирают также набирают популярность сервисы облачного гейминга. Это когда вы&nbsp;арендуете удаленно через сервер компьютер с&nbsp;мощными характеристиками. Поэтому необязательно иметь прокаченное железо на&nbsp;своем компьютере, но&nbsp;при этом требования к&nbsp;скорости интернета значительно растут. В&nbsp;таких случаях уже лучше рассматривать тарифы со&nbsp;скоростью не&nbsp;ниже 100&nbsp;Мбит/с.`,
      isOpen: false,
    },
    {
      id: 4,
      title: "Какие технологии интернета бывают?",
      body: `xDSL (Asymmetric Digital Subscriber Line (Асимметричная Цифровая Абонентская Линия)&nbsp;&mdash; технология подключения интернета по&nbsp;медному телефонному кабелю. Скорость, как правило, не&nbsp;превышает 30&nbsp;Мбит/с.<br/><br/>
               FTTB (Fiber To&nbsp;the Building&nbsp;&mdash; оптика до&nbsp;дома)&nbsp;&mdash; технология подключения через оптоволоконные линии связи, подведенные до&nbsp;дома. В&nbsp;квартиру заводится витая пара (Ethernet-кабель). Скорость, как правило, до&nbsp;100&nbsp;Мбит/с. Но&nbsp;бывают и&nbsp;модернизированные сети. Там скорость интернета может достигать до&nbsp;1000&nbsp;Мбит/с.<br/><br/>
               xPON (Passive optical network, пассивная оптическая сеть)&nbsp;&mdash; это технология мультисервисного доступа, которая позволяет подключить клиента от&nbsp;станции до&nbsp;квартиры напрямую без устройств посредников. Оптика заводится прямо в&nbsp;квартиру. Здесь скорость интернета может достигать до&nbsp;1000&nbsp;Мбит/с без потери качества в&nbsp;любое время суток.`,
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
