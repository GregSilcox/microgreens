require 'rails_helper'

RSpec.describe "donations/index", type: :view do
  before(:each) do
    assign(:donations, [
      Donation.create!(
        amount: 2,
        kind: "Kind"
      ),
      Donation.create!(
        amount: 2,
        kind: "Kind"
      )
    ])
  end

  it "renders a list of donations" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Kind".to_s), count: 2
  end
end
