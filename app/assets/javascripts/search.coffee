# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery ->
#   waypoint = new Waypoint
#     element: document.getElementById('pager')
#     handler: ->
#       # alert 'howdy'
#       notify 'Page Bottom found'


jQuery ->
  $(window).scroll ->
    if $(window).scrollTop() > $(document).height() - $(window).height() - 50
      url = $('.pagination').attr('href')
      $.getScript($('.pagination .next_page').attr('href'))
      # alert('near bottom')
      # console.log 'bottom'