require 'rails_helper'

RSpec.describe "trays/new", type: :view do
  before(:each) do
    assign(:tray, Tray.new(
      green: nil,
      crop: nil,
      weight: 1,
      tray_number: 1
    ))
  end

  it "renders new tray form" do
    render

    assert_select "form[action=?][method=?]", trays_path, "post" do

      assert_select "input[name=?]", "tray[green_id]"

      assert_select "input[name=?]", "tray[crop_id]"

      assert_select "input[name=?]", "tray[weight]"

      assert_select "input[name=?]", "tray[tray_number]"
    end
  end
end
