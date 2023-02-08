require 'rails_helper'

RSpec.describe "/products", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }
  
  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Post.create! valid_attributes
      get posts_url
      expect(response).to be_successful
    end
  end
end