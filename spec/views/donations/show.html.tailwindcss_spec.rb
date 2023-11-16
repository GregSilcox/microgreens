require 'rails_helper'

RSpec.describe "donations/show", type: :view do
  before(:each) do
    assign(:donation, Donation.create!(
      amount: 2,
      kind: "Kind"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Kind/)
  end
end
