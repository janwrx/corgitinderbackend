require 'rails_helper'

RSpec.describe "Corgis", type: :request do
  describe "GET /corgis" do
    it "works! (now write some real specs)" do
      get corgis_path
      expect(response).to have_http_status(200)
    end
  end
end
