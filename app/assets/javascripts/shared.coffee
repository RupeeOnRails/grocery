$(document).on 'change', 'form.autosave', ->
  $(this).submit()

$(document).on 'click', '.decrement a', ->
  quantity_box = $(this).closest('tr').find('.quantity')
  new_quantity = parseInt(quantity_box.html()) - 1
  quantity_box.html(new_quantity)

$(document).on 'click', '.increment a', ->
  quantity_box = $(this).closest('tr').find('.quantity')
  new_quantity = parseInt(quantity_box.html()) + 1
  quantity_box.html(new_quantity)


$(document).on 'click', 'a.add, .increment a, .decrement a', ->
  $(this).replaceWith('<div class="loader"></div>')
