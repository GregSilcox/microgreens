require 'rails_helper'

RSpec.describe "line_items/show", type: :view do
  before(:each) do
    assign(:line_item, LineItem.create!(
      order: nil,
      quantity: 2,
      state: "State",
      status: "Status",
      product: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
