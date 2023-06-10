require 'rails_helper'

RSpec.describe "greens/show", type: :view do
  before(:each) do
    assign(:green, Green.create!(
      name: "Name",
      description: "MyText",
      nutrition: "MyText",
      apperance: "MyText",
      flavor: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
