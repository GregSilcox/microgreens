require 'rails_helper'

RSpec.describe LineItem, type: :model do
  let(:user) { create :member }
  let(:order) { create :order, user: user }
  let(:product) { create :product }
  # let(:delivery) { create :delivery }

  let(:line_item) do
    create :line_item,
      order: order,
      product: product
      # ,      delivery: delivery
  end

  it() { expect(line_item.order).to eq order }
  it() { expect(line_item.product).to eq product }
end
