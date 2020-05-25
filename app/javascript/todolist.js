$(function() {
  $("nobr").click(function() {
  $(this).next("div").slideToggle(200);
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

    $("#edit-btn").click(
      function() {
        $("#edit-input").slideToggle(100);
      });


      //ajax==========================================================================================



})(jQuery);
