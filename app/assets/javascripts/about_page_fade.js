$(document).ready(function () {
  $("div.block").each(function(i) {
    $(this).delay(200 * i).fadeIn(1300);
  });
});


$(document).ready(function () {
  $("div.card-overall").each(function(i) {
    $(this).delay(200 * i).fadeIn(1300);
  });
});
