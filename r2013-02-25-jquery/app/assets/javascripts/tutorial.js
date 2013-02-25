$(function(){

  $('#btn').click(cool_popup);
  $('#btn-color').click(change_color);
  $('#btn-hide').click(hideme);
  $('#btn-show').click(showme);
  $('#btn-calculate').click(calculate_area)
});

function cool_popup()
{
  var name = $('#name').val();
  alert('you have won 1 billion dollars');
}

function change_color()
{
  var color = $('#color').val();
  $('body').css('background-color',color);
}

function hideme()
{
  $('h1').hide();
}

function showme()
{
  $('h1').show();
}

function calculate_area()
{
  var length = $('#length').val();
  length = parseInt(length);
  var width = $('#width').val();
  width = parseInt(width);
  var a = area(length, width);

  $('#area').text("The area is "+a+" sqft");
  if (a > 100)
  {
    $('#area').addClass('alert');
  }
  else
  {
    $('#area').addClass('success');
  }
}

function area(length, width)
{
  return length * width;
}