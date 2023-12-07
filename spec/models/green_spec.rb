require 'rails_helper'

RSpec.describe Green, type: :model do
  let(:green) { create :green }
  it() { expect(green.name).to eq "Broccoli" }
end
