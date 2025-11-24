// @license magnet:?xt=urn:btih:d3d9a9a6595521f9666a5e94cc830dab83b65699&dn=expat.txt Expat/MIT
function fixFooter() {
    var footerHeight = $("#footer").outerHeight() + "px";
    var wrapperHeight = "calc(100vh - " + footerHeight + ")";
    $("#wrapper").css({ 'min-height': wrapperHeight });
}

$(document).ready(fixFooter);
$(window).resize(fixFooter);

$(document).ready(function() {
  var navbar = $('.navbar');
  var sticky = navbar.offset().top;

  $(window).scroll(function() {
    if ($(window).scrollTop() >= sticky) {
      navbar.addClass('sticky-navbar');
    } else {
      navbar.removeClass('sticky-navbar');
    }
  });
});
</script>
// @license-end
