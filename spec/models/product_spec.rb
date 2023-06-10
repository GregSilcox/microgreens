require 'rails_helper'

RSpec.describe Product, type: :model do
  it "can be created" do
    model = Product.create title: "Test Post"
    expect( model ).to be_a Product
  end

  it "must have a title" do
    model = Product.create title: nil
    expect(model).not_to be_valid
  end
end
