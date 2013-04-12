require 'spec_helper'

describe "images/new.html.erb" do
  before(:each) do
    assign(:image, stub_model(Image,
      :url => "MyString",
      :caption => "MyText"
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path, :method => "post" do
      assert_select "input#image_url", :name => "image[url]"
      assert_select "textarea#image_caption", :name => "image[caption]"
    end
  end
end
