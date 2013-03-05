$(function(){
  replace_color();
  $('#new_priority').click(show_new_priority);
  $('#cancel_priority').click(hide_priority);
  $('#create_priority').click(create_priority);
  $('#update_priority').click(update_priority);
  $('#priority_table').on('click','.color_box', edit_priority);
  init_minicolors();
  $('#priority_table').on('click','.up', up_priority);
  $('#priority_table').on('click','.down', down_priority);
});

// Global Variables
// ******************** //
var priorities = [];


// ******************** //

function up_priority()
{
  var id = $(this).parent().children().last().text();
  var token = $('input[name="authenticity_token"]').val();

  $.ajax({
    dataType: 'json',
    type: "POST",
    url: "/priorities/"+id+"/up",
    data: {authenticity_token:token}
  }).done(process_priority);
}

function down_priority()
{
  var id = $(this).parent().children().last().text();
  var token = $('input[name="authenticity_token"]').val();

  $.ajax({
    dataType: 'json',
    type: "POST",
    url: "/priorities/"+id+"/down",
    data: {authenticity_token:token}
  }).done(process_priority);
}

function init_minicolors()
{
  var settings =
  {
    animationSpeed: 100,
    animationEasing: 'swing',
    change: null,
    changeDelay: 0,
    control: 'hue',
    defaultValue: '',
    hide: null,
    hideSpeed: 100,
    inline: false,
    letterCase: 'lowercase',
    opacity: false,
    position: 'default',
    show: null,
    showSpeed: 100,
    swatchPosition: 'left',
    textfield: false,
    theme: 'default'
  };

  $('INPUT.minicolors').minicolors(settings);
}

function edit_priority()
{
  show_edit_priority();

  var color = rgb2hex($(this).css('background-color'));
  $('INPUT.minicolors').minicolors('value', color);
  var name = $(this).next().text();
  $('#name').val(name);
  var value = $(this).next().next().text();
  $('#value').val(value);
  var priority_id = $(this).next().next().next().text();
  $('#priority_id').val(priority_id);
}

function create_priority()
{
  var name = $('#name').val();
  var value = $('#value').val();
  var color = $('INPUT.minicolors').minicolors('value');
  var token = $('input[name="authenticity_token"]').val();

  $.ajax({
    dataType: 'json',
    type: "POST",
    url: "/priorities",
    data: {authenticity_token:token, 'priority[color]':color, 'priority[name]':name, 'priority[value]':value}
  }).done(process_priority);

  return false;
}

function update_priority()
{
  var name = $('#name').val();
  var value = $('#value').val();
  var color = $('INPUT.minicolors').minicolors('value');
  var token = $('input[name="authenticity_token"]').val();
  var priority_id = $('#priority_id').val();

  $.ajax({
    dataType: 'json',
    type: "POST",
    url: "/priorities/" + priority_id,
    data: {_method:'put', authenticity_token:token, 'priority[color]':color, 'priority[name]':name, 'priority[value]':value}
  }).done(process_priority);

  return false;
}

function process_priority(priority_list)
{
  _.each(priority_list, add_priority_to_array);
  $('table').empty();
  _.each(priorities, display_priority);
}

function display_priority(message)
{
  var name = message.name;
  var color = message.color;
  var value = message.value;
  var id = message.id;
  var tr = $('<tr>');
  var td_up = $('<td>');
  var td_down = $('<td>');
  var img_up = $('<img alt="Arrow_up" src="/assets/famfamfam/icons/arrow_up.png">');
  var img_down = $('<img alt="Arrow_down" src="/assets/famfamfam/icons/arrow_down.png">');
  var td_1 = $('<td>');
  var td_2 = $('<td>');
  var td_3 = $('<td>');
  var td_4 = $('<td>');
  td_1.addClass('priority color_box');
  td_1.css('background-color', color);
  td_2.addClass('priority');
  td_2.text(name);
  td_3.addClass('priority hide');
  td_3.text(value);
  td_4.addClass('priority hide');
  td_4.text(id);
  td_up.addClass('priority up');
  td_up.append(img_up);
  td_down.addClass('priority down');
  td_down.append(img_down);
  tr.append(td_up);
  tr.append(td_down);
  tr.append(td_1);
  tr.append(td_2);
  tr.append(td_3);
  tr.append(td_4);
  $('#priority_table').append(tr);
  hide_priority();
}

function add_priority_to_array(priority)
{

  priorities = _.reject(priorities, function(p){return p.id == priority.id});
  priorities.push(priority);
  priorities = _.sortBy(priorities, function(p){ return p.value; }).reverse();
}

function hide_priority()
{
  $('#new_priority').show();
  $('.form').hide();
}

function show_new_priority()
{
  $('#update_priority').hide();
  $('#new_priority').hide();
  $('#create_priority').show();
  $('.form').show();
  $('#name').val('');
  $('#value').val('');
  $('INPUT.minicolors').minicolors('value', '#ffffff');
  $('#name').focus();
}

function show_edit_priority()
{
  $('#update_priority').show();
  $('#new_priority').hide();
  $('#create_priority').hide();
  $('.form').show();
  $('#name').focus();
}


function replace_color()
{
  var color_boxes = $('.color_name');
  color_boxes = _.each(color_boxes, get_color);
}

function get_color(color_name)
{
  var color = $(color_name).text();
  $(color_name).text("");
  var box = $('<td>');
  box.addClass('color_box');
  box.css('background-color',color);
  $(color_name).after(box);
  $(color_name).removeClass('hide');
  $(color_name).detach();
}


function rgb2hex(rgb) {
    rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    function hex(x) {
        return ("0" + parseInt(x).toString(16)).slice(-2);
    }
    return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
}

