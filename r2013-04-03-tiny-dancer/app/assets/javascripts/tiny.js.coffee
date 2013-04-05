window.app =
  audio: null
  dancer: null
  ready: ->
    console.log('app is ready')
    $('.song_name').click(app.play_song)

  play_song: (e) ->
    e.preventDefault()
    filename = $(this).parent().data('filename')
    position = $(this).parent().data('position')

    $('audio').remove()
    $('#music').append('<audio controls="controls" src ="" />')
    app.audio = $('audio')[0]

    app.



$(document).ready(app.ready)