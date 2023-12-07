require 'rails_helper'

RSpec.describe Statement, type: :model do
  let(:user) { create :user }
  let(:statement) { Statement.new user }

  describe "initialization" do
    it "initializes with a user" do
      expect(statement.user).to eq user
    end
  end

  describe "donations" do
    let(:message) { "You made a donation of $44.00 on 06/03/2023" }

    before do
      create :donation,
        user: user,
        donated_at: Date.parse("06/03/2023"),
        amount: 44.00
    end

    it "prints a donation message" do
      expect(statement.donations).to include message
    end
  end

  describe "orders" do
    let(:message_1) { "a 4 oz. bag of microgreens" }
    let(:message_2) { "a 1 oz. bag of mustard" }

    before do
      order = create :order, user: user
      product_1 = create :product, title: message_1
      create :line_item, order: order, product: product_1

      product_2 = create :product, title: message_2
      create :line_item, order: order, product: product_2
    end

    it() { expect(statement.orders).to include message_1 }
    it() { expect(statement.orders).to include message_2 }
  end
end
