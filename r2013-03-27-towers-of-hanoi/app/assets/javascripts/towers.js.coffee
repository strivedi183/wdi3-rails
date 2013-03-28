class Home
  @document_ready: ->
    $('#play_btn').click(Home.get_number)
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

  @reset: ->
    $('.callbox .rings').empty()
    $("input[type=text], textarea").val("")

$(document).ready(Home.document_ready)