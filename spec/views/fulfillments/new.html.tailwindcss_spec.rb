require 'rails_helper'

RSpec.describe "fulfillments/new", type: :view do
  before(:each) do
    assign(:fulfillment, Fulfillment.new(
      kind: "MyString",
      line_item: nil
    ))
  end

  it "renders new fulfillment form" do
    render

    assert_select "form[action=?][method=?]", fulfillments_path, "post" do

      assert_select "input[name=?]", "fulfillment[kind]"

      assert_select "input[name=?]", "fulfillment[line_item_id]"
    end
  end
end
