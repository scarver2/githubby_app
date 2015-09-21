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
    App.update_languages()

App.init_infinite_paging = init_infinite_paging = () ->
  # if $('.pagination').length > 0
    $(window).scroll ->
      if $(window).scrollTop() > $(document).height() - $(window).height() - 1
        App.fetch_search_results()

App.update_languages = update_languages = () ->
  items = []
  options = []

  unique = (array) ->
    $.grep array, (el, index) ->
      index == $.inArray(el, array)

  $('#results tbody tr td:nth-child(2)').each ->
    if $(this).text().length > 0
      items.push $(this).text().toLowerCase()
  items = unique(items.sort())
  q = $('#search_form_q').val()
  options.push '<li><a href="/search?q=' + q + '">(none)</a></li>'
  $.each items, (i, item) ->
    options.push '<li><a href="/search?language=' + item + '&q=' + q + '">' + item + '</a></li>'
  $('ul#drop1').empty().append options.join('')

jQuery ->
  # App.fetch_search_results()
  App.init_infinite_paging()
