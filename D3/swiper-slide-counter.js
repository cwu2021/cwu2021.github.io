// https://codepen.io/jeremyLuis/pen/EWRxjZ?html-preprocessor=pug
var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    // direction: 'vertical',
    loop: false,
    
    // If we need pagination
    pagination: '.swiper-pagination',
    onSlideChangeStart: photos_change
  }) 


var counter = $('.swiper-counter');
var currentCount = $('<span class="count">1<span/>');
counter.append(currentCount);

function photos_change(swiper) {
  var index = swiper.activeIndex + 1,
      $current = $(".photo-slide").eq(index),
      dur = 0.8;

  var prevCount = $('.count');
  currentCount = $('<span class="count next">' + index + '<span/>');
  currentCount.appendTo(counter);
  TweenLite.to(prevCount, dur, {
    y: -12,
    opacity: 0,
    onCompleteParams: [prevCount],
    onComplete: function (prevCount) {
      prevCount.remove();
    },
    ease: Power2.easeOut
  });
  TweenLite.fromTo(currentCount, dur, {
    y: 12,
    opacity: 0
  }, {
    y: 0,
    opacity: 1,
    ease: Power2.easeOut
  });
}
