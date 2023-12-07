require 'rails_helper'

RSpec.describe User, type: :model do
  describe "a member" do
    let(:user) { create :member }
    it() { expect(user).not_to be_admin }
  end
end
