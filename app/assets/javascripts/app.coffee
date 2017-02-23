$(document).on "turbolinks:load turbolinks:fetch ready", ()->
  console.log('cambie')

  backhead = $('body').height()
  $(window).scroll ()->
    wScroll = $(this).scrollTop();
    pixels= 50 + (wScroll/8)
    #console.log wScroll
    if (wScroll <= backhead)
      $('.parallax').css("background-position", "center " + pixels / 2 + "%")
