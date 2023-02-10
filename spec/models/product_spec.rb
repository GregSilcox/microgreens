require 'rails_helper'

RSpec.describe Product, type: :model do
  it "can be created" do
    post = Post.create title: "Test Post"
    expect( post ).to be_a Post
  end
end
