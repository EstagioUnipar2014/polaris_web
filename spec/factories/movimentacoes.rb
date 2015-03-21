# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movimentacao do
    descricao "MyString"
    data_agendamento "2015-03-21"
    data_efetivacao "2015-03-21"
    valor "9.99"
    efetivada false
    tipo_cd "MyString"
    conta nil
    usuario nil
  end
end
