# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  $('input.checkbox').last().hide()

  $('body').delegate '.checkbox', 'change', () ->
    $todo_item_id = $(this).attr('id')
    $checked = $(this).is(':checked')

    $.ajax({
      url: '/update_checkbox'
      type: 'post'
      data:
        todo_item_id: $todo_item_id
        checked: $checked
      success:
        console.log 'YEAH!'
    })