require 'rails_helper'

RSpec.describe Animal, :type => :model do
  it { should belong_to :raca }
  it { should belong_to :classificacao }
  it { should have_many :vacinas }
  it { should have_many :exames }
  it { should have_many :ordenhas }
  it { should have_many :cios }
  it { should have_many :coberturas }
  it { should have_many :animal_dieta }
  it { should have_many :dietas }
  it { should have_and_belong_to_many :doencas }
  it { should accept_nested_attributes_for :vacinas }
  it { should validate_presence_of :identificacao }
  it { should validate_uniqueness_of :identificacao }
  it { should validate_presence_of :sexo }
  it { should validate_presence_of :raca }
  it { should validate_presence_of :classificacao }
end
