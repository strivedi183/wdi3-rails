window.app =
  ready: ->
    setInterval(app.update_time, 1000)
    # setInterval(app.show_clock, 1000)
    setInterval(app.show_stairs, 1000)
  update_time: ->
    time = moment().format("MMMM Do YYYY, h:mm:ss a");
    $('#time').text(time)

  show_stairs: ->
    height =
    colors = ['#ff0000', '#00ff00', '#0000ff']
    sec = moment().format('s').toNumber()
    ran = Number.random(1, sec)
    rects = d3.select('svg').selectAll('rect').data([1..sec])
    rects.enter()
      .append('rect')
      .attr('width', 10)
      .attr('height', 2)
      .attr('x', (d) -> (d - 1) * 10)
      .attr('y', (d) => (d - 1) * 2)
    rects.exit()
      .transition()
      .attr('width', 0)
      .attr('height', 0)
      .style('fill', colors[ran])

  # show_clock: ->
  #   colors = ['#ff0000', '#00ff00', '#0000ff']
  #   sec = moment().format('s').toNumber()
  #   rem = sec % 3
  #   d3.select('.three')
  #     .transition()
  #     .duration(1000)
  #     .attr('r', rem * 50)
  #     .style('fill', colors[rem])

  #   colors = ['#ff0000', '#00ff00', '#0000ff']
  #   sec = moment().format('s').toNumber()
  #   rem = sec % 10
  #   d3.select('.ten')
  #     .transition()
  #     .duration(1000)
  #     .attr('r', rem * 50)
  #     .style('fill', colors[rem])


$(document).ready(app.ready)
