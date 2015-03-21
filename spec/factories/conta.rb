# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contum, :class => 'Conta' do
    saldo "9.99"
    ativa false
    descricao "MyString"
    usuario nil
  end
end
