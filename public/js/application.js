$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  


  $(".expand_text").on('click', function() {
    if ( $(this).html() == "Expand" )
      {
        $(this).parent().prev().addClass("shown");
        $(this).parent().height('auto');  
        $(this).parent().addClass("collapser");
        $(this).parent().removeClass("expander");
        $(this).html("Collapse");
      }
    else
      {
        $(this).parent().prev().removeClass("shown");
        $(this).parent().addClass("expander");
        $(this).parent().removeClass("collapser");
        $(this).html("Expand");
      }
  }); 

});
