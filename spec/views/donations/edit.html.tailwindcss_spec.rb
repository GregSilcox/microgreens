require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  let(:donation) {
    Donation.create!(
      amount: 1,
      kind: "MyString"
    )
  }

  before(:each) do
    assign(:donation, donation)
  end

  it "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(donation), "post" do

      assert_select "input[name=?]", "donation[amount]"

      assert_select "input[name=?]", "donation[kind]"
    end
  end
end
