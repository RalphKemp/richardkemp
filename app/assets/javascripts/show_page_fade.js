$(document).ready(function () {
  $('div.profile-gallery-img').each(function(i) {
    $(this).delay(215 * i).fadeIn(2000);
  });
});
