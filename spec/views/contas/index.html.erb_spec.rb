require 'rails_helper'

RSpec.describe "contas/index", :type => :view do
  before(:each) do
    assign(:contas, [
      Conta.create!(),
      Conta.create!()
    ])
  end

  it "renders a list of contas" do
    render
  end
end
