$(function() {
  $("nobr").click(function (){
    $(this).next("div").slideToggle(300);
  });

  $(".check").hide();

  $(".circle").hover(
    function () {
      $(this).hide();
      $(this).next("i").show();
    },
    function () {
      $(this).show();
      $(this).next("i").hide();
    }
  );

  $("#edit-btn").click(function (){
    $(this).children("li").slideToggle(300);
    $("#edit-btn").hide();
  });
});
