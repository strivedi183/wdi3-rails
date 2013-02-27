$(function(){

  $('#btn-number').click(add_number);
  $('#btn-square').click(square);
  $('#btn-function').click(generic_function);
  $('#btn-start').click(start_timer);
  $('#btn-stop').click(stop_timer);

});

var numbers = [];
var timer = null;

function start_timer()
{
  timer = setInterval(generate_random_number, 500);
}

function generate_random_number()
{
  var number = _.random(0, 1000);
  numbers.push(number);
  create_number_box(number);
  $('#number').val('');
  $('#number').focus();
}

function stop_timer()
{
  clearInterval(timer);
}

function empty_boxes()
{
  var clear = $('#numbers').children('.clear');
  $('#numbers').empty();
  $('#numbers').append(clear);
}

function generic_function()
{
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers();
}

function funky_calc(i)
{
  var equation = $('#number').val();
  return eval(equation);
}

function square()
{
  empty_boxes();
  numbers = _.map(numbers, square_value);
  show_numbers();
}

function show_numbers()
{
  _.each(numbers, create_number_box);
}

function create_number_box(i)
{
  var box = $('<div>');
  box.addClass('box')
  box.text(i);
  $('#numbers').prepend(box);
}

function square_value(i)
{
  return i * i;
}

function add_number()
{
  var number = parseInt($('#number').val());
  numbers.push(number);
  create_number_box(number);
  $('#number').val('');
  $('#number').focus();
}
