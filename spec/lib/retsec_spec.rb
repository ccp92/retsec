# require_relative '../../lib/retsec'
require "retsec"

RSpec.describe Retsec do

  context "returning a string with even digits" do

    describe "given the string secret" do
      it "returns retsec" do
        expect(Retsec.convert("secret")).to eql("retsec")
      end
    end

    describe "given the string code" do
      it "returns deco" do
        convert("code", "deco")
      end
    end

    describe "given the string warplane" do
      it "returns lanewarp" do
        convert("warplane", "lanewarp")
      end
    end

    describe "given the string antidisestablishmentarianism" do
      it "returns shmentarianismantidisestabli" do
        convert("antidisestablishmentarianism", "shmentarianismantidisestabli")
      end
    end
  end

  context "returning a string with odd digits" do
    
  end

  private

  def convert(input, output)
    expect(Retsec.convert(input)).to eql(output)
  end
end
