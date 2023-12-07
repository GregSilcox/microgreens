require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:user) { create :user }
  let(:group) { create :group }
  let(:role) { create :role, user: user, group: group }
  it() { expect(role.kind).to eq "member" }
end
