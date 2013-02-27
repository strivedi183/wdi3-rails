var checking_balance = 1000;
var savings_balance = 500;

$(function(){
  $('#checking_balance').text('$'+checking_balance.toFixed(2));
  $('#savings_balance').text('$'+savings_balance.toFixed(2));
  $('#btn-checking-add').click(add_to_checking);
  $('#btn-checking-with').click(with_from_checking);
  $('#btn-savings-add').click(add_to_savings);
  $('#btn-savings-with').click(with_from_savings);
});

function balance_refresh()
{
  $('#checking_balance').text('$'+checking_balance.toFixed(2));
  $('#savings_balance').text('$'+savings_balance.toFixed(2));
}

function not_empty(number)
{
  if (number == '')
  {
    number = 0;
    return number;
  }
  else
  {
    return number;
  }
}

function add_to_checking()
{
  var add_value = $('#checking_amount').val();
  checking_balance += parseFloat(not_empty(add_value));
  balance_refresh();
}

function with_from_checking()
{
  var with_value = $('#checking_amount').val();
  with_value = parseFloat(not_empty(with_value));
  if (with_value <= checking_balance)
  {
    checking_balance -= with_value;
    balance_refresh();
  }
  else
  {
    if (with_value <= (savings_balance + checking_balance))
    {
      overdraft(with_value);
    }
    else
    {
      errors();
    }
  }
}

function add_to_savings()
{
  var add_value = $('#savings_amount').val();
  savings_balance += parseFloat(not_empty(add_value));
  balance_refresh();
}

function with_from_savings()
{
  var with_value = $('#savings_amount').val();
  with_value = parseFloat(not_empty(with_value));
  if (with_value <= savings_balance)
  {
    savings_balance -= with_value;
    balance_refresh();
  }
  else
  {
    errors();
  }
}

function overdraft(overdraft_amount)
{
  savings_balance -= (overdraft_amount - checking_balance);
  checking_balance = 0;
  balance_refresh();
}

function errors()
{
  $('#checking_balance').addClass('alert');
  $('#savings_balance').addClass('alert');
  $('#atm_error').text('Not enough in Savings Account!')
}
