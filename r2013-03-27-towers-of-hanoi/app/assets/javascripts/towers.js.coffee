class Home
  @document_ready: ->
    $('#play_btn').click(Home.get_number)
    $('#play_btn').click(Home.stopwatch)
    $('.callbox button').click(Home.select_ring_1)
    $('#reset_btn').click(Home.reset)

  @select_ring_1: ->
    $('.callbox').removeClass('background-red')
    if Home.ring_1 == 0
      if $(this).parent().hasClass('background-yellow') == true
        $(this).parent().removeClass('background-yellow')
        Home.ring_1 == 0
      else
        $(this).parent().addClass('background-yellow')
        Home.ring = $(this).parent().children().first().children().first()
        Home.ring_1 = Home.ring.data('weight')
        console.log("This is Home.ring_1 #{Home.ring_1}")
        console.log("This is Home.ring #{Home.ring}")
    else
      if $(this).parent().hasClass('background-yellow') == true
        $(this).parent().removeClass('background-yellow')
        Home.ring_2 == 0
      else
        $(this).parent().addClass('background-yellow')
        y = $(this).parent().children().first().children().first()
        console.log("This is y #{y}")
        Home.ring_2 = $(y).data('weight')
      if Home.ring_2 == null
        Home.ring_2 = 100
      console.log("This is Home.ring_2 #{Home.ring_2}")
      console.log("This is Home.ring #{Home.ring}")
      if Home.ring_1 < Home.ring_2
        console.log("Working")
        x = Home.ring.detach()
        console.log(x)
        $(this).parent().children().first().prepend(x)
      else
        $(this).parent().addClass('background-red')
      Home.ring_1 = 0
      Home.ring_2 = 0
      Home.ring = 0
      $('#call_1').removeClass('background-yellow')
      $('#call_2').removeClass('background-yellow')
      $('#call_3').removeClass('background-yellow')
      if $('#call_2').children().first().children().length == Home.ring_match
        $('#call_2').addClass('background-blue')
      if $('#call_3').children().first().children().length == Home.ring_match
        $('#call_3').addClass('background-blue')

  @get_number: ->
    num = $('#ring_count').val()
    Home.create_rings(num)

  @create_rings: (num) ->
    Home.ring_1 = 0
    Home.ring_2 = 0
    Home.ring = 0
    num.to_i
    i = 1
    while i <= num
      x = $('<div>')
      $(x).css('height','10px')
      width = 5*i+10
      $(x).css('width',width)
      $(x).data('weight',i)
      $(x).addClass('disk')
      $(x).attr('id',"disk_#{i}")
      $('#call_1 .rings').append(x)
      i++
    Home.ring_match = $('#call_1').children().first().children().length
    console.log(Home.ring_match)


  @reset: ->
    $('.callbox .rings').empty()
    $("input[type=text], textarea").val("")


  @stopwatch = (text) ->
    sec++
    if sec is 60
      sec = 0
      min = min + 1
    else
      min = min
    if min is 60
      min = 0
      hour += 1
    sec = "0" + sec  if sec <= 9
    document.clock.stwa.value = ((if (hour <= 9) then "0" + hour else hour)) + " : " + ((if (min <= 9) then "0" + min else min)) + " : " + sec
    document.clock.theButton.value = "Stop "  if text is "Start"
    document.clock.theButton.value = "Start"  if text is "Stop "
    if document.clock.theButton.value is "Start"
      window.clearTimeout SD
      sec = sec - 1
      return true
    SD = window.setTimeout("stopwatch();", 1000)
  resetIt = ->
    sec = -1
    min = 0
    hour = 0
    document.clock.theButton.value = "Start"  if document.clock.theButton.value is "Stop "
    window.clearTimeout SD
  sec = -1
  min = 0
  hour = 0


$(document).ready(Home.document_ready)