$(function() {
  $('div.instructions').each(function() {
    $(this).delegate('button:not(.active)', 'click', function() {
      $(this).closest('section').hide();
      $($(this).attr('data-section')).show();
    });
  })
});
