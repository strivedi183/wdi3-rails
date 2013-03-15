$(document).ready(document_ready);

function cancel_subscriber_form()
{
  $('#form').empty();
}

function cancel_login_form()
{
  $('#form').empty();
}

function document_ready()
{
  clear_login_buttons();
}

function clear_login_buttons()
{
  if ($('.username').length)
    $('#form, #anonymous').empty();
}