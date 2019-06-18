require 'rails_helper'

RSpec.describe "pads/index", type: :view do
  before(:each) do
    assign(:pads, [
      Pad.create!(
        :name => "Name",
        :description => "Description"
      ),
      Pad.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of pads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
