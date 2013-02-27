$(function(){

  // $('#age').blur(blur_func);
  $('#age').change(validate_age);
  // $('body').mousemove(colorize);
  $('body').keypress(shortcut);
});

function shortcut(data)
{
  $('#text').text(($('#text').text())+String.fromCharCode(data.which));

  switch(String.fromCharCode(data.which))
  {
    case 'b':
      $('#text').css('color','blue');
      break;
    case 'g':
      $('#text').css('color','green');
      break;
    case 'y':
      $('#text').css('color','yellow');
      break
    case 'r':
      $('#text').css('color','red');
      break;
    case 'p':
      $('#text').css('color','purple');
      break;
    default:
      $('#text').css('color','black');
  }
}

function colorize(eventData)
{
  if (eventData.clientX % 2 == 0)
    $('#x').css('color','red');
  else
    $('#x').css('color','green');
  if (eventData.clientY % 2 == 0)
    $('#y').css('color','red');
  else
    $('#y').css('color','green')
  $('#x').text('x-coordinate: '+eventData.clientX);
  $('#y').text('y-coordinate: '+eventData.clientY);

  var red = (eventData.clientX + eventData.clientY) % 256;
  var green = (eventData.clientX * eventData.clientY) % 256;
  var blue = ((eventData.clientX * eventData.clientY)/(eventData.clientX + eventData.clientY)) % 256;

  // $('body').css('background-color','rgb('+red+','+green+','+blue+')');
}

function validate_age()
{
  $('body').children('p').remove();
  var x = $('<p>');
  $('body').prepend(x);
  sent_age = parseInt($('#age').val());
  if (sent_age > 17)
    x.addClass('green');
  else
    x.addClass('red');
  x.text('Your age is '+sent_age);
}
