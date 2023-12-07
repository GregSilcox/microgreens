require 'rails_helper'

RSpec.describe "trays/edit", type: :view do
  let(:tray) {
    Tray.create!(
      green: nil,
      crop: nil,
      weight: 1,
      tray_number: 1
    )
  }

  before(:each) do
    assign(:tray, tray)
  end

  it "renders the edit tray form" do
    render

    assert_select "form[action=?][method=?]", tray_path(tray), "post" do

      assert_select "input[name=?]", "tray[green_id]"

      assert_select "input[name=?]", "tray[crop_id]"

      assert_select "input[name=?]", "tray[weight]"

      assert_select "input[name=?]", "tray[tray_number]"
    end
  end
end
