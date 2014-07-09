$(document).on "submit", "#new_comment", (e) ->
  e.preventDefault()

  $.post "/comments.json", $(this).serializeArray(), (comment) ->
    $text       = $('<span>').text comment.text
    $createdAt  = $('<span>').text comment.created_at
    $newComment = $('<div class="comment">').append($text).append $createdAt
    $('.comment:last').after $newComment
