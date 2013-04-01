window.app =
  map: null
  markers: []
  ready: ->
    $('body').on('keydown', '#search', app.filter_products)
  filter_products: (e) ->
    query = $('#search').val()
    settings =
      dataType: 'script'
      type: 'get'
      url: "/products/search?query=#{query}"
    $.ajax(settings)
  display_map: (lat, lng, zoom) ->
    mapOptions =
      center: new google.maps.LatLng(lat, lng)
      zoom: zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
    canvas = $('#map_canvas')[0];
    app.map = new google.maps.Map(canvas, mapOptions);
  add_marker: (lat, lng, title) ->
    latlng = new google.maps.LatLng(lat, lng);
    marker = new google.maps.Marker({position: latlng, map: app.map, title: title});
    app.markers.push(marker);
  clear_markers: ->
    marker.setMap(null) for marker in app.markers
    app.markers = []

$('#document').ready(app.ready)
