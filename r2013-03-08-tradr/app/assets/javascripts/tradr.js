$(function() {
  $('#btn-close_user_form').click(close_new_user_form);
  // $('#btn-close_stock_form').click(close_buy_stock_form);
  $('body').on('click','.btn-close_stock_form', close_buy_stock_form);
});

function close_new_user_form()
{
  $('#new_user').hide();
}

function close_buy_stock_form()
{
  console.log('Button worked');
  $('#add_new_stock_table').hide();
  $('#initial_add_new_stock').show();
}

function quote_timer()
{
  var msec = 1000;
  timer = setInterval(get_quotes, msec);
}

function get_quotes()
{
  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/stocks/get_quotes"
    }).done(process_chart);
}

// function show_chart()
// {

//   $.ajax({
//       dataType: 'json',
//       type: "get",
//       url: "/stocks/chart/"
//   }).done(process_chart);

//   return false;
// }

function process_chart(message)
{

  console.log(message);

  // $('#chart_stocks').empty();

  // new Morris.Line({
  // element: 'chart',
  // data: quotes['AAPL'],
  // xkey: 'date',
  // ykeys: ['value'],
  // labels: ['Value']
  // });

}
