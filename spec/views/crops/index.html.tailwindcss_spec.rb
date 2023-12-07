require 'rails_helper'

RSpec.describe "crops/index", type: :view do
  before(:each) do
    assign(:crops, [
      Crop.create!(
        notes: "MyText"
      ),
      Crop.create!(
        notes: "MyText"
      )
    ])
  end

  it "renders a list of crops" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
