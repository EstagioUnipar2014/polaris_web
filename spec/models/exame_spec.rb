require 'rails_helper'

RSpec.describe Exame, :type => :model do
  it { should belong_to :animal }
  it { should belong_to :tipo_exame }
  it { should have_and_belong_to_many :doencas }
  it { should validate_presence_of :animal }
  it { should validate_presence_of :tipo_exame }
  it { should validate_presence_of :data }
end
