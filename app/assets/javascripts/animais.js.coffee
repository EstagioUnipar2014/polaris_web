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
    
  $('#new_vacina').bind "ajax:error", (event, data) ->
    $('#nova-vacina').hide()  
    alert("Deu merda")  
    
  $('#new_exame').bind "ajax:success", (event, data) ->
    $('#novo-exame').hide()
    alert("Exame agendada com sucesso")
    
  $('#new_exame').bind "ajax:error", (event, data) ->
    $('#novo-exame').hide()  
    alert("Deu merda")  
    
  $('#new_pesagem').bind "ajax:success", (event, data) ->
    $('#nova-pesagem').hide()
    peso = $('#pesagem_peso').val()
    $('#peso').html("<strong>Ultima pesagem: </strong>"+peso+" Kg")
    alert("Nova pesagem cadastrada com sucesso ")  
    
  $('#new_pesagem').bind "ajax:error", (event, data) ->
    $('#nova-pesagem').hide()  
    alert("Deu merda")  
    
        
   