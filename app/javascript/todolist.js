$(function($) {
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
      $(this).next("input").show();
    },
    function() {
      $(this).show();
      $(this).next("input").hide();
    }
  );

  $(".check").click(function() {
    $(this).parents(".tasks-index-item").fadeOut();
  });
})(jquery);
