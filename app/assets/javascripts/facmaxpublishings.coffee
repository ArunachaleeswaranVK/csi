# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).ready ->
    $('#name').on 'change', ->
      $.ajax
        url: '/facmaxpublishings/getname/' + $(this).val()
        type: 'get'
      return
      
    $(document).ready(ready)
    $(document).on('page:load', ready)