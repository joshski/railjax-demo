$(document).on "submit", "#new_comment", (e) ->
  e.preventDefault()

  $('#comments').load $(this).attr('action') + ' #comments', $(this).serializeArray()
