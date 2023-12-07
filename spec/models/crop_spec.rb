require 'rails_helper'

RSpec.describe Crop, type: :model do
  let(:crop) { create :crop }
  it() { expect(crop.notes).to eq "Notes" }
end
