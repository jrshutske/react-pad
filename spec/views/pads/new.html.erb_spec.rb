require 'rails_helper'

RSpec.describe "pads/new", type: :view do
  before(:each) do
    assign(:pad, Pad.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new pad form" do
    render

    assert_select "form[action=?][method=?]", pads_path, "post" do

      assert_select "input[name=?]", "pad[name]"

      assert_select "input[name=?]", "pad[description]"
    end
  end
end
