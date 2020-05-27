$(function($) {
  $("#login").click(function() {
    $("#login-wrapper").fadeIn(200);
  });
  $(".signup").click(function () {
    $("#new-wrapper").fadeIn(200);
  });
  $(".close-modal").click(function () {
    $("#new-wrapper").fadeOut(200);
    $("#login-wrapper").fadeOut(200);
  });


  $("nobr").click(function() {
    $(this).next("div").slideToggle(200);
  });

  $(".edit-input").hide();
  $(".edit-complete").hide();

  $("button").click(function() {
    $(".edit-input").slideToggle(50);
    $(".edit-complete").slideToggle(50);
  });

  $(".check").hide();

  $(".circle").hover(
    function() {
      $(this).hide();
      $(this).next("i").show();
    },
    function() {
      $(this).show();
      $(this).next("i").hide();
    }
  );

  $(".check").click(function() {
    $(this).parents(".tasks-index-item").slideUp(200);
  });
  $(".circle").click(function() {
    $(this).parents(".tasks-index-item").slideUp(200);
  });

  $(document).ready(function () {
    setTimeout(function () {
      $(".flash").fadeOut();
    },5000);
  });

})(jquery);
