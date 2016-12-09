# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'search', '#grocery_search input, #item_search input', ->
  if ($(this).hasClass('typing'))
    false
  else  
    $(this).closest('form').submit()

$(document).on 'keydown', '#grocery_search input', ->


$ ->
  $('.search_field:first').focus()
  