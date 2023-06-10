require 'rails_helper'

RSpec.describe "greens/new", type: :view do
  before(:each) do
    assign(:green, Green.new(
      name: "MyString",
      description: "MyText",
      nutrition: "MyText",
      apperance: "MyText",
      flavor: "MyText"
    ))
  end

  it "renders new green form" do
    render

    assert_select "form[action=?][method=?]", greens_path, "post" do

      assert_select "input[name=?]", "green[name]"

      assert_select "textarea[name=?]", "green[description]"

      assert_select "textarea[name=?]", "green[nutrition]"

      assert_select "textarea[name=?]", "green[apperance]"

      assert_select "textarea[name=?]", "green[flavor]"
    end
  end
end
