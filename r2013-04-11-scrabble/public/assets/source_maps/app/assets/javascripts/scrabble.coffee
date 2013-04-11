window.app =
  selected_channel: null
  pusher: null
  ready: ->
    $('body').on('click', '#all_channels li', app.select_channel)
    app.pusher = new Pusher('594a7ba71c0d75f637a7')
  select_channel: ->
    app.unsubscribe_channel() if app.selected_channel != null
    if $(this).hasClass('background-yellow')
      $(this).removeClass('background-yellow')
      app.selected_channel = null
    else
      app.selected_channel = $(this)
      $('.channel').removeClass('background-yellow')
      $(this).addClass('background-yellow')
      app.subscribe_channel()
  subscribe_channel: ->
    app.pusher.subscribe(app.selected_channel.text())
    app.bind_events()
  unsubscribe_channel: ->
    app.pusher.unsubscribe(app.selected_channel.text())
  bind_events: ->
    channel = app.pusher.channels.channels[app.selected_channel.text()]
    channel.bind('chat', app.chat)
  chat: (data) ->
    console.log(data)

$(document).ready(app.ready)
