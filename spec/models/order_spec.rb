require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:user) { create :member }
  let(:order) { create :order, user: user }

  it () { expect(order.user).to eq user }
end
