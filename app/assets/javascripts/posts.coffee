$(document).ready ->
  baseUrl = "http://api.tumblr.com/v2"
  user = 'th3w33pingdoctor.tumblr.com'
  api_key = $("#keys").data('key')
  $('#get_posts').on 'click', ->
    $.ajax "#{baseUrl}/blog/#{user}/posts",
    type: 'GET'
    data: api_key: api_key
    dataType: 'jsonp'
    success: (data) ->
      for posts in data.response.posts
        $('.posts').append "<li><h2>#{posts.title}</h2>#{posts.body}</li>"
