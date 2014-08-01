# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#nova-vacina-button').on "click", ->
    $('#nova-vacina').show()

  $('#novo-exame-button').on "click", ->
    $('#novo-exame').show()

  $('#nova-pesagem-button').on "click", ->
    $('#nova-pesagem').show()
    
  $('#new_vacina').bind "ajax:success", (event, data) ->
    $('#nova-vacina').hide()
    alert("Vacina agendada com sucesso")  
   