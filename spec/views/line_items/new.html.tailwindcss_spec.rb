require 'rails_helper'

RSpec.describe "line_items/new", type: :view do
  before(:each) do
    assign(:line_item, LineItem.new(
      order: nil,
      quantity: 1,
      state: "MyString",
      status: "MyString",
      product: nil
    ))
  end

  it "renders new line_item form" do
    render

    assert_select "form[action=?][method=?]", line_items_path, "post" do

      assert_select "input[name=?]", "line_item[order_id]"

      assert_select "input[name=?]", "line_item[quantity]"

      assert_select "input[name=?]", "line_item[state]"

      assert_select "input[name=?]", "line_item[status]"

      assert_select "input[name=?]", "line_item[product_id]"
    end
  end
end
