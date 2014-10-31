class Notificacao < ActiveRecord::Base

  belongs_to :propriedade

  scope :da_propriedade, ->(propriedade_id) {where :propriedade_id => propriedade_id}
  scope :existe, ->(url) {where :url => url}

  def self.vacinas_pendentes_do_dia
    pendentes = Vacina.pendente.do_dia
    pendentes.each do |vacina|
      @notificacao = Notificacao.new
      @notificacao.url = "/vacinas/#{vacina.id}"
      if !existe(@notificacao.url)
        @notificacao.mensagem = "O medicamento #{vacina.medicamento.nome} deve ser aplicado no animal #{vacina.animal.identificacaoNome}"
        @notificacao.data = Date.today
        @notificacao.propriedade = vacina.animal.propriedade
        @notificacao.save
     end     
    end
  end

  def self.vacinas_vencidas
    vencidas = Vacina.vencidas
    vencidas.each do |vacina|
      @notificacao = Notificacao.new
      @notificacao.url = "/vacinas/#{vacina.id}"
      if !existe(@notificacao.url)
        @notificacao.mensagem = "O medicamento #{vacina.medicamento.nome} deve ser aplicado no animal #{vacina.animal.identificacaoNome} no dia #{vacina.data_vacina}"
        @notificacao.data = Date.today
        @notificacao.propriedade = vacina.animal.propriedade
        @notificacao.save
      end    
    end
  end
  
  def self.exames_pendentes_do_dia
    pendente = Exame.pendente.do_dia
    pendente.each do |exame|
      @notificacao = Notificacao.new 
      @notificacao.url = "exames/#{exame.id}"
      if !existe(@notificacao.url)
        @notificacao.mensagem = "O animal #{exame.animal.identificaNome}, possui um exame marcado"
        @notificacao.data = Date.today
        @notificacao.propriedade = exame.animal.propriedade
        @notificacao.save
      end    
    end
  end
  
  def self.exames_vencidos
    pendente = Exame.vencidos
    pendente.each do |exame|
      @notificacao = Notificacao.new 
      @notificacao.url = "exames/#{exame.id}"
      if !existe(@notificacao.url)
        @notificacao.mensagem = "O animal #{exame.animal.identificaNome}, possui um exame marcado"
        @notificacao.data = Date.today
        @notificacao.propriedade = exame.animal.propriedade
        @notificacao.save
      end    
    end
  end
  
end
