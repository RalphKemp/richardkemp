$(document).ready(function () {
  $('div.card-overall').each(function(i) {
    $(this).delay(180 * i).fadeIn(1800);
  });
});
