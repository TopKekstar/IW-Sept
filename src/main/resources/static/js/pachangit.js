$(document).ready(function()
{
  $(".pachanga").mouseenter(function(){
      $(this).css({"background-color": "grey", "color": "white"});
  });
  $(".pachanga").mouseleave(function(){
      $(this).css({"background-color": "lightgrey", "color": "black"});
  });


}
);
