class Albm
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Albm.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

$(document).ready(Albm.document_ready)
