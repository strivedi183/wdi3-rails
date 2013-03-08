$(function(){

  $('#show_chart').click(show_chart);

});

function show_chart()
{

  var activity = $('#activities').val();

  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/exercises/chart/" + activity,
    }).done(process_activity);
}

function process_activity(exercises)
{

$('#chart').empty();

console.log(exercises);
new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'chart',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: exercises,
  // The name of the data record attribute that contains x-values.
  xkey: 'completed',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['value'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});
}