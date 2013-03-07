// function close_task()
// {
//   var tr = $(this).parent().parent();
//   tr.addClass('strikethrough');
//   $('.task_row').last().after(tr);
// }

function update_task()
{
  var tr = $(this).parent().parent();
  var id = $(this).parent().next().text();
  var token = $('input[name=authenticity_token]').val();
  var is_complete = $(this).parent().prev().prev().prev().prev().children().first().is(':checked');
  console.log(is_complete);

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks/" + id,
      data: { _method:'put', authenticity_token:token, 'task[is_complete]':is_complete }
    }).done(process_task);

  return false;
}

function delete_task()
{
  var tr = $(this).parent().parent();
  var id = $(this).parent().next().next().text();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks/" + id,
      data: { _method:'delete', authenticity_token:token }
    }).done(process_task);

  return false;
}

function create_task()
{
  var is_complete = $('#is_complete').is(':checked');
  var priority_id = $('#priority_id').val();
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#duedate').val();
  var address = $('#address').val();
  var token = $('input[name=authenticity_token]').val();

    $.ajax({
      dataType: 'json',
      type: "post",
      url: "/tasks",
      data: {authenticity_token:token, 'task[priority_id]':priority_id,'task[is_complete]':is_complete, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[address]':address}
    }).done(process_task);

  return false;
}

function process_task(task_list)
{
  _.each(task_list, add_task_to_array);
 $('tbody').empty();
  _.each(tasks, display_task);
}

function add_task_to_array(task)
{
  tasks = _.reject(tasks, function(t){return t.id == task.id;});
  tasks.push(task);
  tasks = _.sortBy(tasks, function(t){ return t.value;}).reverse();
}

function display_task(task)
{
  var tr = $('<tr>');
  var td_1 = $('<td>');
  var td_2 = $('<td>');
  var td_3 = $('<td>');
  var td_4 = $('<td>');

  td_2.addClass('color');

  td_1.html("<input id='is_complete' name='is_complete' type='checkbox' value='1'>");
  // if (task.is_complete == true)
  // {
  //   console.log('test strikethrough');
  //   tr.addClass('strikethrough');
  // }
  td_2.css('background-color', task.color);
  td_3.text(task.title);
  td_4.html("<a href='#' class='button tiny alert' id='delete_task'>Delete</a>");
  tr.append([td_1, td_2, td_3, td_4]);
  $('tr').last().after(tr);

  add_marker(task.latitude, task.longitude, task.title);
  hide_task_form();
}


function show_new_task_form()
{
  $('#new_task').hide();
  $('#update_task').hide();
  $('.form').show();
  $('#create_task').show();
  $('#is_complete').removeAttr('checked');
  $('#title').val('');
  $('#description').val('');
  $('#duedate').val('');
  $('#address').val('');
  $('#title').focus();
}

function hide_task_form()
{
  $('#new_task').show();
  $('.form').hide();
}

// function show_new_task_form()
// {
//   $('#new_task').hide();
//   $('.taskform').show();
//   $('#create_task').show();
//   $('#update_task').hide();
//   $('#title').val('');
//   $('#description').val('');
//   var date = moment().format("MM/DD/YYYY");
//   $('#duedate').val(date);
//   $('#address').val('');
//   $('#is_complete').removeAttr('checked');
//   $('#title').focus();
// }

// function hide_task_form()
// {
//   $('#new_task').show();
//   $('.taskform').hide();
// }

// function create_task()
// {
//   var priority_id = $('#priority_id').val();
//   var title = $('#title').val();
//   var description = $('#description').val();
//   var duedate = $('#duedate').val();
//   var is_complete = $('#is_complete').is(':checked');
//   var address = $('#address').val();
//   var token = $('input[name=authenticity_token]').val();

//   $.ajax({
//       dataType: 'json',
//       type: "post",
//       url: "/tasks",
//       data: {authenticity_token:token, 'task[priority_id]':priority_id, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[is_complete]':is_complete, 'task[address]':address}
//     }).done(process_task);

//   return false;
// }

// function update_task()
// {
// }

// function process_task(task_list)
// {
//   _.each(task_list, display_task);
// }

// function display_task(task)
// {
//   add_marker(task.latitude, task.longitude, task.title);

//   var li = $('<li>');
//   li.text(task.title);
//   $('#tasks').append(li);

//   hide_task_form();
// }
