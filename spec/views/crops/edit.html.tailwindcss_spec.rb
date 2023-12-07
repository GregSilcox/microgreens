require 'rails_helper'

RSpec.describe "crops/edit", type: :view do
  let(:crop) {
    Crop.create!(
      notes: "MyText"
    )
  }

  before(:each) do
    assign(:crop, crop)
  end

  it "renders the edit crop form" do
    render

    assert_select "form[action=?][method=?]", crop_path(crop), "post" do

      assert_select "textarea[name=?]", "crop[notes]"
    end
  end
end
