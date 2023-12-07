require 'rails_helper'

RSpec.describe Tray, type: :model do
  let(:green) { create :green }
  let(:crop) { create :crop }

  let(:tray) do
    create :tray,
      tray_number: 4,
      crop: crop,
      green: green
  end

  it() { expect(tray.tray_number).to eq 4 }
end
