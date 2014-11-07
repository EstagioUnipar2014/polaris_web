$ ->
  $('#filtro-link').on "click", ->
    window.location.href = "/animais" + $("#filtro-select").val()
    
