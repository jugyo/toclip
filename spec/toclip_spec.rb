require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Toclip" do
  it "should clip" do
    object = Object.new
    Clipboard.should_receive(:copy).with(object.inspect)
    object.to_clip.should == object
  end

  it "alias_method :toclip, :to_clip" do
    object = Object.new
    Clipboard.should_receive(:copy).with(object.inspect)
    object.toclip.should == object
  end

  describe "String#to_clip" do
    it "should not call inspect" do
      object = "foo"
      Clipboard.should_receive(:copy).with(object)
      object.to_clip
    end
  end
end
