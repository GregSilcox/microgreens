require 'rails_helper'

RSpec.describe Fulfillment, type: :model do
  let(:user) { create :member }
  let(:order) { create :order, user: user }
  let(:product) { create :product }

  let(:line_item) do
    create :line_item,
      order: order,
      product: product
  end

  let(:fulfillment) do
    create :fulfillment,
      line_item: line_item,
      fulfilled_at: DateTime.parse("06/03/2023")
  end

  it() { expect(fulfillment.line_item).to eq line_item }
end
