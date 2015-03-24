require 'rails_helper'

RSpec.describe "contas/edit", :type => :view do
  before(:each) do
    @conta = assign(:conta, Conta.create!())
  end

  it "renders the edit conta form" do
    render

    assert_select "form[action=?][method=?]", conta_path(@conta), "post" do
    end
  end
end
