require 'spec_helper'

describe "images/index.html.erb" do
  before(:each) do
    assign(:images, [
      stub_model(Image,
        :url => "Url",
        :caption => "MyText"
      ),
      stub_model(Image,
        :url => "Url",
        :caption => "MyText"
      )
    ])
  end

  it "renders a list of images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end