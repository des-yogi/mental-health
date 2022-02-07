document.addEventListener('DOMContentLoaded', function () {
  const teamSlider = new Swiper('.team-slider__slider', {
    speed: 400,
    slidesPerView: 1,
    spaceBetween: 32,
    loop: true,
    preloadImages: false,
    lazy: true,

    breakpoints: {
      768: {
        slidesPerView: 2,
      },
      1200: {
        slidesPerView: 4,
      },
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
});

