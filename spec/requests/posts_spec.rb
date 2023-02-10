require 'rails_helper'

RSpec.describe "/products", type: :request do
  let(:valid_attributes) {
    { title: "test post", description: "describing a test post."}
  }
  
  let(:invalid_attributes) {
    { title: nil, description: 5.2 }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Post.create! valid_attributes
      get posts_url
      expect(response).to be_successful
    end
  end

  describe "Post /create" do
    it "does not create a new Post" do
      expect {
        post posts_url, params: { post: invalid_attributes }
      }.to change(Post, :count).by(0)
    end
  end
end