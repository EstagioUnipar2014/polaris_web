require 'rails_helper'

RSpec.describe Animal, :type => :model do
  it { should have_many :vacinas }
  it { should have_many :exames }
  it { should have_many :ordenhas }

  it { should validate_presence_of :identificacao }
end
