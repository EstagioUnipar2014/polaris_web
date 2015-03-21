# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categoria_financeira do
    nome "MyString"
    descricao "MyString"
    usuario nil
    tipo_cd "MyString"
  end
end
