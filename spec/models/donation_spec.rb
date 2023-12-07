require 'rails_helper'

RSpec.describe Donation, type: :model do
  let(:user) { create :member }
  let(:donation) { create :donation, user: user }

  describe "user" do
    it "has a user" do
      expect(donation.user).to eq user
    end
  end
end
