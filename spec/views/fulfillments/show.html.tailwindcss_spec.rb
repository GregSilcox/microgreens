require 'rails_helper'

RSpec.describe "fulfillments/show", type: :view do
  before(:each) do
    assign(:fulfillment, Fulfillment.create!(
      kind: "Kind",
      line_item: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(//)
  end
end
