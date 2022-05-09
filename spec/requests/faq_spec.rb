require 'rails_helper'

RSpec.describe "Faqs", type: :request do
  describe "GET /contact_us" do
    it "returns http success" do
      get "/faq/contact_us"
      expect(response).to have_http_status(:success)
    end
  end

end
