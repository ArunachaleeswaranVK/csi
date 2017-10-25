# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).ready ->
    $('#name').on 'change', ->
      $.ajax
        url: '/bestcsiinternationalstudentseventhosts/getname/' + $(this).val()
        type: 'get'
      return
      
    $(document).ready(ready)
    $(document).on('page:load', ready)
    
    
$ ->  
  $(document).ready ->
  setTimeout (->
    $('.alert_wrapper').fadeOut 'slow', ->
      $(this).remove()
      return
    return
  ), 4000
  return 
  $(document).ready(ready)
  $(document).on('page:load', ready)    
  
$('#my-form').submit ->
  confirm 'Are you sure you want to submit the award? (Click Cancel to Review for changes before submitting)'  