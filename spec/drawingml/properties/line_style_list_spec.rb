require "spec_helper"

describe OpenXml::DrawingML::Properties::LineStyleList do
  include PropertyTestMacros

  it_should_use tag: :lnStyleLst, name: "line_style_list"

  context "when adding children" do
    before(:each) do
      @instance = described_class.new
    end

    it "should raise an exception if the child isn't one of the accepted properties" do
      expect { instance << [] }.to raise_error(ArgumentError)
    end
  end

  context "when there are no children" do
    before(:each) do
      @instance = described_class.new
    end

    it "should not output any XML" do
      expect(xml(instance)).to eq("")
    end
  end

  context "when there is a child" do
    before(:each) do
      @instance = described_class.new
      instance << OpenXml::DrawingML::Properties::Outline.new.tap do |line|
        line.width = 50
      end
    end

    it "should output the correct XML" do
      expect(xml(instance)).to eq("<a:lnStyleLst>\n    <a:ln w=\"50\"/>\n  </a:lnStyleLst>")
    end
  end
end
