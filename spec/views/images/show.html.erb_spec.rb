require 'spec_helper'

describe "images/show.html.erb" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :url => "Url",
      :caption => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
