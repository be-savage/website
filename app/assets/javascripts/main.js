$(window).scroll(function() {
  if($(window).scrollTop()>10){
    $("nav.navbar").css("background", "rgba(18,10,69,1)")
  } else {
    $("nav.navbar").css("background", "rgba(0,0,0,0.4)")
  }
})
