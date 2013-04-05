window.app =
  ready: ->
    console.log('app is ready')
    $('.song_name').click(app.play_song)
  play_song: ->
    filename = ""

    console.log('the song is playing')
    filename = $(this).parent().data('filename')
    console.log(filename)
    position = $(this).parent().data('position')
    console.log(position)
    src = '/audio/'
    console.log(src+filename)
    $('#music').children().attr('src',src+filename)
    $('#music').children()[0].play()



$(document).ready(app.ready)
