require 'rails_helper'

RSpec.describe "Pads", type: :request do
  describe "GET /pads" do
    it "works! (now write some real specs)" do
      get pads_path
      expect(response).to have_http_status(200)
    end
  end
end
