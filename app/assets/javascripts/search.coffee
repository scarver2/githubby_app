# jQuery ->
#   if $('.pagination').length
#     $(window).scroll ->
#       if $(window).scrollTop() > $(document).height() - $(window).height() - 1
#         url = $('.pagination .next').attr('href')
#         $('.pagination').text('loading...')
#         $.getScript(url)
#     $(window).scroll()

# window.App = {}
# App.fetch_search_results =

# fetch_search_results = ->
#   if $('.pagination').length
#     $(window).scroll ->
#       if $(window).scrollTop() > $(document).height() - $(window).height() - 1
#         url = $('.pagination .next').attr('href')
#         $('.pagination').text('loading...')
#         $.getScript(url)

window.App = {}

App.fetch_search_results = fetch_search_results = () ->
  if $('.pagination .next').length > 0
    url = $('.pagination .next').attr('href')
    $('.pagination').text('loading...')
    $.getScript(url)

App.init_infinite_paging = init_infinite_paging = () ->
  # if $('.pagination').length > 0
    $(window).scroll ->
      if $(window).scrollTop() > $(document).height() - $(window).height() - 1
        App.fetch_search_results()

jQuery ->
  # App.fetch_search_results()
  App.init_infinite_paging()
