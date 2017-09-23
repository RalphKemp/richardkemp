jQuery(function($) {

    var $button = $('#go-to-top-button');
    var $win = $(window);
    var winH = $win.height(); // Get the window height.

    $win.on("scroll", function () {
        if ($(this).scrollTop() > winH ) {
            $button.addClass("hidden-xs hidden-sm hidden-md hidden-lg");
        } else {
            $button.removeClass("hidden-xs hidden-sm hidden-md hidden-lg");
        }
    }).on("resize", function(){ // If the user resizes the window
       winH = $(this).height(); // you'll need the new height value
    });
});
