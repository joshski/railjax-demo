$(document).on "submit", "#new_comment", (e) ->
  e.preventDefault()

  $.post "/comments", $(this).serializeArray(), (html) ->
    $('.comment:last').after html
