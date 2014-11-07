$ ->
  $('#filtro-link').on "click", ->
    window.location.href = "/animais" + $("#filtro-select").val()
    
  $('#relatorio').on "click", ->
    window.location.href = "/animais.pdf" + $("#filtro-select").val()
    
