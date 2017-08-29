// $(document).ready(function(){$(".menu__item").hover(function(){clearTimeout($.data(this,"timer")),$("ul",this).stop(!0,!0).show()},function(){$.data(this,"timer",setTimeout($.proxy(function(){$("ul",this).stop(!0,!0).hide()},this),100))})}),$(document).ready(function(){$(".menu__catalog").hover(function(){clearTimeout($.data(this,"timer")),$("ul.menu__catalog-dropdown-menu",this).stop(!0,!0).show()},function(){$.data(this,"timer",setTimeout($.proxy(function(){$("ul.menu__catalog-dropdown-menu",this).stop(!0,!0).hide()},this),100))})}),$(document).ready(function(){$(".menu__catalog-item").hover(function(){$("ul.menu__catalog-2level",this).stop(!0,!0).show()},function(){$("ul.menu__catalog-2level",this).stop(!0,!0).hide()})});var main=function(){$(".icon-menu").click(function(){$(".slide-menu").animate({left:"0px"},200),$("body").animate({left:"285px"},200)}),$(".icon-close").click(function(){$(".slide-menu").animate({left:"-285px"},200),$("body").animate({left:"0px"},200)})};$(document).ready(main),$(document).ready(function(){$(window).resize(function(){$(window).width()>767?$("#catalog").removeClass("icon-menu"):$("#catalog").addClass("icon-menu")})});

$(document).ready(function(){
  $('.slider__products').slick({
    arrows: false,
    dots: true,
    dotsClass: 'slick-dots mt5',
    variableWidth: true,
    infinite: false,
    speed: 300,
    slidesToShow: 5,
    slidesToScroll: 5,
    responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    ]
  });
});

$(document).ready(function(){
  $('.brandline_items').slick({
    arrows: true,
    dots: true,
    dotsClass: 'slick-dots-light mt5',
    variableWidth: true,
    infinite: false,
    speed: 300,
    slidesToShow: 6,
    slidesToScroll: 6,
    responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    ]
  });
});

// Один уровень выпадания
$(document).ready(function(){
  $('.menu__item').hover(function () {
    clearTimeout($.data(this,'timer'));
    $('ul',this).stop(true,true).show();
  }, function () {
    $.data(this,'timer', setTimeout($.proxy(function() {
      $('ul',this).stop(true,true).hide();
    }, this), 100));
  });
})

// Открытие первого уровня каталога (КАТАЛОГ-ПОДКАТАЛОГ)
$(document).ready(function(){
  $('.menu__catalog').hover(function () {
    clearTimeout($.data(this,'timer'));
    $('ul.menu__catalog-dropdown-menu',this).stop(true,true).show();
  }, function () {
    $.data(this,'timer', setTimeout($.proxy(function() {
      $('ul.menu__catalog-dropdown-menu',this).stop(true,true).hide();
    }, this), 100));
  });
})

$(document).ready(function(){
  $('.menu__catalog').hover(function () {
    $('.menu__catalog-dropdown-menu', this).each(function() {
      var height = $(this).height();
      $('.menu__catalog-2level').css('height', height);
    });
  });
})

// Открытие второго уровня каталога (КАТАЛОГ-ПОДКАТАЛОГ-ПОДКАТАЛОГ)
// Без таймера
$(document).ready(function(){
  $('.menu__catalog-item').hover(function () {
    $('ul.menu__catalog-2level',this).stop(true,true).show();
  }, function () {
    $('ul.menu__catalog-2level',this).stop(true,true).hide();
  });
})

/* Открытие меню-шторки */
var main = function() { //главная функция
    $('.icon-menu').click(function() { //выбираем класс icon-menu и добавляем метод click с функцией, вызываемой при клике
        $('.slide-menu').animate({ //выбираем класс menu и метод animate
            left: '0px' //теперь при клике по иконке, меню, скрытое за левой границей на 285px, изменит свое положение на 0px и станет видимым
        }, 200); //скорость движения меню в мс

        $('body').animate({ //выбираем тег body и метод animate
            left: '285px' //чтобы всё содержимое также сдвигалось вправо при открытии меню, установим ему положение 285px
        }, 200); //скорость движения меню в мс
    });


/* Закрытие меню */
    $('.icon-close').click(function() { //выбираем класс icon-close и метод click
        $('.slide-menu').animate({ //выбираем класс menu и метод animate
            left: '-285px' //при клике на крестик меню вернется назад в свое положение и скроется
        }, 200); //скорость движения меню в мс

    $('body').animate({ //выбираем тег body и метод animate
            left: '0px' //а содержимое страницы снова вернется в положение 0px
        }, 200); //скорость движения меню в мс
    });
};

$(document).ready(main); //как только страница полностью загрузится, будет вызвана функция main, отвечающая за работу меню

$(document).ready(function(){
  // Если меленький размер экрана - прячем остальное меню
  $(window).resize(function(){
    var w = $(window).width();
    if(w > 767) {
      $('#catalog').removeClass('icon-menu');
      //menu.removeAttr('style');
    }
    else{
      $('#catalog').addClass('icon-menu');
    }
  });

});