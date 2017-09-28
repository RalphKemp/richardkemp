$(document).ready(function () {
  $('div.profile-gallery-img').each(function(i) {
    $(this).delay(200 * i).fadeIn(1000);
  });
});
