$(function($) {
  $("#login").click(function() {
    $("#login-wrapper").fadeIn(200);
  });
  $("#signup").click(function () {
    $("#new-wrapper").fadeIn(200);
  });
  $("#user-edit-wrapper").hide();
  $("#user-edit").click(function () {
    $("#user-edit-wrapper").fadeIn(200);
  });
  $(".close-modal").click(function () {
    $("#new-wrapper").fadeOut(200);
    $("#login-wrapper").fadeOut(200);
    $("#user-edit-wrapper").fadeOut(200);
  });

  $("nobr").click(function() {
    $(this).next("div").slideToggle(200);
  });

  $(".edit-input").hide();
  $(".edit-complete").hide();
  $(".project-input").hide();


  $("button").click(function() {
    $(".edit-input").slideToggle(80);
    $(".edit-complete").slideToggle(80);
    $(".project-input").slideToggle(80);
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

  $(document).ready(function() {
    $(".flash").animate({
      'margin-left': '20px'
    }, 1500);
    setTimeout(function () {
      $(".flash").animate({
        'margin-left': '-500px'
      }, {
        complete: function () {
          $(".flash").fadeOut();
        }
      });
    },5000);
  });
  $(".header-user-manu").hide();
  $("#user-name").click(function() {
    $(".header-user-manu").slideToggle(200);
  });

  $(".edit-complete").click(function() {
    $(".edit-input").hide();
    $(this).hide();
    $(".task-show").hide();
  });

  $("#left-menu").hide();
  $(".fa-bars").click(function () {
    $("#left-menu").animate({
      "width": "toggle"
    },{duration: 'fast', easing: 'swing'}
    );
  });
})(jquery);
