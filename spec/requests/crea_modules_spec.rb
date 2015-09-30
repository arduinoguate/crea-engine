require 'rails_helper'

RSpec.describe "CreaModules", type: :request do
  describe "GET /crea_modules" do
    it "works! (now write some real specs)" do
      get crea_modules_path
      expect(response).to have_http_status(200)
    end
  end
end
