$(function(){

  $('#btn-color').click(add_color);
  $('#colors').on('click','.box',set_color);
  $('#btn-clear').click(clear_all);
  $('#canvas').on('mouseover','.paint', print_color)

  $('#btn-image').click(add_image);
  $('#images').on('click','.box',set_image)

  create_paint_boxes();

});

function set_image()
{
  var image_url = $(this).attr('src');
  // $('#selected_image')css('background-image','url('+image_url+')');
  // $('#selected_image').addClass('box');
  $('#canvas').css('background-image','url('+image_url+')');
}

function add_image()
{
  var image_url = $('#image').val();
  var box = $('<img>');
  box.addClass('box');
  box.attr('src',image_url);
  $('#images').append(box);
  $('#image').val('');
  $('#image').focus();
}

function print_color()
{
  var color = $('#selected').css('background-color');
  $(this).css('background-color',color);
}

function create_paint_boxes()
{
  for(var i = 0; i < 5000; i++)
  {
    var paint = $('<div>')
    paint.addClass('paint').addClass('translucent');
    $('#canvas').append(paint);
  }
}

function clear_all()
{
  $('#selected').css('background-color','white');
  $('#colors').children().remove();
}

function set_color()
{
  var color = $(this).css('background-color');
  $('#selected').css('background-color',color);
  $('#selected').addClass('box');
}

function add_color()
{
  var color = $('#color').val();
  var box = $('<div>');
  box.addClass('box');
  box.css('background-color',color);
  $('#colors').append(box);
  $('#color').val('');
  $('#color').focus();
}
