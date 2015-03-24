require 'rails_helper'

RSpec.describe "contas/show", :type => :view do
  before(:each) do
    @conta = assign(:conta, Conta.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
