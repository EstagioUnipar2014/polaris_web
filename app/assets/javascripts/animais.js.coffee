# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

  $('#nova-vacina-button').on "click", ->
    $('#nova-vacina').show()

  $('#novo-exame-button').on "click", ->
    $('#novo-exame').show()

  $('#nova-pesagem-button').on "click", ->
    $('#nova-pesagem').show()
    
  $('#new_vacina').bind "ajax:success", (event, data) ->
    $('#nova-vacina').hide()
    $('#new_vacina')[0].reset(); 
    alert("Vacina agendada com sucesso")  
    
  $('#new_vacina').bind "ajax:error", (event, data) ->
    $('#nova-vacina').hide() 
    $('#new_vacina')[0].reset(); 
    alert("Erro")  
    
  $('#new_exame').bind "ajax:success", (event, data) ->
    $('#novo-exame').hide()
    $('#new_exame')[0].reset();
    alert("Exame agendada com sucesso")
    
  $('#new_exame').bind "ajax:error", (event, data) ->
    $('#novo-exame').hide()  
    $('#new_exame')[0].reset();
    alert("Erro")  
    
  $('#new_pesagem').bind "ajax:success", (event, data) ->
    $('#nova-pesagem').hide()
    peso = $('#pesagem_peso').val()
    $('#peso').html("<strong>Ultima pesagem: </strong>"+peso+" Kg")
    $('#new_pesagem')[0].reset();
    alert("Nova pesagem cadastrada com sucesso ")  
    
  $('#new_pesagem').bind "ajax:error", (event, data) ->
    $('#nova-pesagem').hide()  
    $('#new_pesagem')[0].reset();
    alert("Erro")
       
  $('#ocultar-pesagem').on "click", ->
    $('#nova-pesagem').hide()     
    
  $('#ocultar-vacina').on "click", ->
    $('#nova-vacina').hide()     
    
  $('#ocultar-exame').on "click", ->
    $('#novo-exame').hide()         
    
$(document).ready(ready)
$(document).on('page:load ready', ready)    
    
    
        
   