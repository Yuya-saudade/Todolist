$(function() {
  $("nobr").click(function (){
    $(this).next("div").slideToggle(300);
  });

  $(".fa-check").hide();

  $(".fa-circle").hover(
    function () {
      $(this).hide();
      $(this).next("i").show();
    },
    function () {
      $(this).show();
      $(this).next("i").hide();
    }
  );

  $("#edit-input").hide();

  $("#edit").click(function (){
    $("#edit-input").show();
  });
});
