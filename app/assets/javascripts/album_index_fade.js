$(document).ready(function () {
  $('div.card-overall').each(function(i) {
    $(this).delay(250 * i).fadeIn(1100);
  });
});
