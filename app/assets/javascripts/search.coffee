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
  if $('.pagination').length
    $(window).scroll ->
      if $(window).scrollTop() > $(document).height() - $(window).height() - 1
        url = $('.pagination .next_page').attr('href')
        $('.pagination').text('loading...')
        $.getScript(url)
        # alert('near bottom')
        # console.log 'bottom'
    $(window).scroll()
