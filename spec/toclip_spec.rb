require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Toclip" do
  it "should clip" do
    object = Object.new
    PB.should_receive(:copy).with(object.inspect)
    object.to_clip.should == object
  end
end
