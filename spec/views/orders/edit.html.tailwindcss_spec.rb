require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  let(:order) {
    Order.create!(
      user: nil,
      state: "MyString",
      status: "MyString"
    )
  }

  before(:each) do
    assign(:order, order)
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", microgreens_order_path(order), "post" do

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[state]"

      assert_select "input[name=?]", "order[status]"
    end
  end
end
