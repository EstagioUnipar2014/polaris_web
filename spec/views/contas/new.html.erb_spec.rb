require 'rails_helper'

RSpec.describe "contas/new", :type => :view do
  before(:each) do
    assign(:conta, Conta.new())
  end

  it "renders new conta form" do
    render

    assert_select "form[action=?][method=?]", contas_path, "post" do
    end
  end
end
