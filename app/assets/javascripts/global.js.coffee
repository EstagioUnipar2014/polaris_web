$ ->
  $('#filtro-link').on "click", ->
    window.location.href = "/animais" + $("#filtro-select").val()
    
  $('#relatorio').on "click", ->
    window.location.href = "/animais.pdf" + $("#filtro-select").val()  

  $('#filtro-notificacoes-link').on "click", ->
    window.location.href = "/notificacoes" + $("#filtro-notificacoes-select").val()
    
  $('#filtro-exames-link').on "click", ->
    window.location.href = "/exames" + $("#filtro-exames-select").val()
    
  $('#relatorio-exames').on "click", ->
    window.location.href = "/exames.pdf" + $("#filtro-exames-select").val()   
 