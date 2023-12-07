require 'rails_helper'

RSpec.describe "trays/index", type: :view do
  before(:each) do
    assign(:trays, [
      Tray.create!(
        green: nil,
        crop: nil,
        weight: 2,
        tray_number: 3
      ),
      Tray.create!(
        green: nil,
        crop: nil,
        weight: 2,
        tray_number: 3
      )
    ])
  end

  it "renders a list of trays" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
