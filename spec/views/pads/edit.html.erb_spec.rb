require 'rails_helper'

RSpec.describe "pads/edit", type: :view do
  before(:each) do
    @pad = assign(:pad, Pad.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit pad form" do
    render

    assert_select "form[action=?][method=?]", pad_path(@pad), "post" do

      assert_select "input[name=?]", "pad[name]"

      assert_select "input[name=?]", "pad[description]"
    end
  end
end
