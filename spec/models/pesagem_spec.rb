require 'rails_helper'

RSpec.describe Pesagem, :type => :model do
  it { should validate_presence_of :animal }
  it { should validate_presence_of :peso }
  it { should belong_to :animal }
  it { should validate_presence_of :data_pesagem }
end
