require 'rails_helper'

RSpec.describe "greens/edit", type: :view do
  let(:green) {
    Green.create!(
      name: "MyString",
      description: "MyText",
      nutrition: "MyText",
      apperance: "MyText",
      flavor: "MyText"
    )
  }

  before(:each) do
    assign(:green, green)
  end

  it "renders the edit green form" do
    render

    assert_select "form[action=?][method=?]", green_path(green), "post" do

      assert_select "input[name=?]", "green[name]"

      assert_select "textarea[name=?]", "green[description]"

      assert_select "textarea[name=?]", "green[nutrition]"

      assert_select "textarea[name=?]", "green[apperance]"

      assert_select "textarea[name=?]", "green[flavor]"
    end
  end
end
