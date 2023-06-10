require 'rails_helper'

RSpec.describe "fulfillments/index", type: :view do
  before(:each) do
    assign(:fulfillments, [
      Fulfillment.create!(
        kind: "Kind",
        line_item: nil
      ),
      Fulfillment.create!(
        kind: "Kind",
        line_item: nil
      )
    ])
  end

  it "renders a list of fulfillments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Kind".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
