# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateRole = (id, role) ->
  $.ajax '/',
    type: "POST",
    url: '/users/' + id + '/change_role',
    data: { _method:'PUT', role: role }
