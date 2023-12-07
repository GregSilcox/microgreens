require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { build :product, title: "Microgreens", description: "Yummy" }
  let(:invalid) { build :product, title: nil }

  it ("is a product") { expect( product ).to be_a Product }
  it ("is valid") { expect( product ).to be_valid }
  it ("must have a title") { expect(invalid).not_to be_valid }
end
