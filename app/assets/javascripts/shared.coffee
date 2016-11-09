$(document).on 'change', 'form.autosave', ->
  $(this).submit()
  
$(document).on 'click', 'nav a', ->
  $('nav a').removeClass 'selected'
  $(this).addClass 'selected'

window.onpopstate = ->
#  $('#main_content').load(location.href)
  window.location = location.href

$(document).on 'click', 'a[data-remote=true]', ->
  history.pushState(null, document.title, this.href);
