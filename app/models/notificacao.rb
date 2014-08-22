class Notificacao < ActiveRecord::Base

  belongs_to :propriedade

  scope :da_propriedade, ->(propriedade_id) {where :propriedade_id => propriedade_id}

  def self.vacinas_pendentes_do_dia
    pendentes = Vacina.pendente.do_dia
    pendentes.each do |vacina|
      @notificacao = Notificacao.new
      @notificacao.mensagem = "O medicamento #{vacina.medicamento.nome} deve ser aplicado no animal #{vacina.animal.identificacaoNome}"
      @notificacao.url = "/vacinas/#{vacina.id}"
      @notificacao.data = Date.today
      @notificacao.propriedade = vacina.animal.propriedade
      @notificacao.save
    end
  end

  def self.vacinas_vencidas
    vencidas = Vacina.vencidas
    vencidas.each do |vacina|
      @notificacao = Notificacao.new
      @notificacao.mensagem = "O medicamento #{vacina.medicamento.nome} deve ser aplicado no animal #{vacina.animal.identificacaoNome} no dia #{vacina.data_vacina}"
      @notificacao.url = "/vacinas/#{vacina.id}"
      @notificacao.data = Date.today
      @notificacao.propriedade = vacina.animal.propriedade
      @notificacao.save
    end
  end
end
