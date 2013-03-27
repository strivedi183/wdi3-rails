class Home
  @document_ready: ->
    Home.create_rings(5)

  @create_rings: (num) ->
    debugger
    num.to_i
    i = 1
    while i <= num
      x = $('<div>')
      $(x).css('height','10px')
      width = 5*i+10
      $(x).css('width',width)
      $(x).data('weight',i)
      $(x).addClass('disk')
      $('#call_1 .base').append(x)
      i++

$(document).ready(Home.document_ready)