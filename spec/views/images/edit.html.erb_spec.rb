require 'spec_helper'

describe "images/edit.html.erb" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :url => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path(@image), :method => "post" do
      assert_select "input#image_url", :name => "image[url]"
      assert_select "textarea#image_caption", :name => "image[caption]"
    end
  end
end
