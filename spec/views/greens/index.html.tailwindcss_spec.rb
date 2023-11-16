require 'rails_helper'

RSpec.describe "greens/index", type: :view do
  before(:each) do
    assign(:greens, [
      Green.create!(
        name: "Name",
        description: "MyText",
        nutrition: "MyText",
        apperance: "MyText",
        flavor: "MyText"
      ),
      Green.create!(
        name: "Name",
        description: "MyText",
        nutrition: "MyText",
        apperance: "MyText",
        flavor: "MyText"
      )
    ])
  end

  it "renders a list of greens" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
