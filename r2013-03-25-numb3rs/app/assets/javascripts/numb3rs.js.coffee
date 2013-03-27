class Home
  @document_ready: ->
    $('#slider').slider({min: 1, max: word_count, step: 1, slide: Home.sliding})

  @sliding: (e, ui) ->
    word_id = ui.value
    settings =
      dataType: 'json'
      type: 'get'
      url: "/filter?word_id=#{word_id}"
    $.ajax(settings).done(Home.done_response)

  @done_response: (response) ->
    console.log(response)
    $('#word').text("The Word is : #{response.word}")
    $('#hexademical').text("The Hexadecimal is: #{response.hexadecimal}")
    $('#decimal').text("The Decimal is: #{response.decimal}")
    $('#binary').text("The Binary is: #{response.binary}")

$(document).ready(Home.document_ready)