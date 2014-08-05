require 'rails_helper'

RSpec.describe Vacina, :type => :model do
  it { should belong_to :animal }
  it { should belong_to :tipo_vacina }
  it { should belong_to :medicamento }
  it { should validate_presence_of :animal }
  it { should validate_presence_of :tipo_vacina }
  it { should validate_presence_of :medicamento }
  it { should validate_presence_of :dosagem }
end
