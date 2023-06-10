require 'rails_helper'

RSpec.describe "fulfillments/edit", type: :view do
  let(:fulfillment) {
    Fulfillment.create!(
      kind: "MyString",
      line_item: nil
    )
  }

  before(:each) do
    assign(:fulfillment, fulfillment)
  end

  it "renders the edit fulfillment form" do
    render

    assert_select "form[action=?][method=?]", fulfillment_path(fulfillment), "post" do

      assert_select "input[name=?]", "fulfillment[kind]"

      assert_select "input[name=?]", "fulfillment[line_item_id]"
    end
  end
end
