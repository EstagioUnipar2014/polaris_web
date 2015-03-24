require 'rails_helper'

RSpec.describe "Contas", :type => :request do
  describe "GET /contas" do
    it "works! (now write some real specs)" do
      get contas_path
      expect(response.status).to be(200)
    end
  end
end
