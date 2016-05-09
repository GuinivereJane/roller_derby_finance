
$(document).on('ready', function(){
  $('.edit-skater').on('click', function(e){
    skaterId = $(this).attr("data");
    e.preventDefault();
    $.ajax({
      dataType: 'json',
      url: $(this).attr('href'),
      method: 'GET',
      success: function(data){
        var source = $('#skater-template').html();
        var template = Handlebars.compile(source);
        var html = template(data);
        $('[data='+skaterId+']').html(html);
      }
    });
  });
  $('.edit-skater-submit').on('click', function(e) {
    e.preventDefault();
    skaterId=$(this).attr('data');
    $('[data='+skaterId+']').html(' ');
  });

});
