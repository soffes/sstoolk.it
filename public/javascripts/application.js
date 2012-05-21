$(function() {
  $('section#code-instruction-download ul.segmented li:last-child button').click(function() {
    $('section#code-instruction-download').hide();
    $('section#code-instruction-submodule').show();
  });
  
  $('section#code-instruction-submodule ul.segmented li:first-child button').click(function() {
    $('section#code-instruction-submodule').hide();
    $('section#code-instruction-download').show();
  });
});
