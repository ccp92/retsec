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
        expect(Retsec.convert("code")).to eql("deco")
      end
    end

    describe "given the string warplane" do
      it "returns lanewarp" do
        expect(Retsec.convert("warplane")).to eql("lanewarp")
      end
    end

    describe "given the string antidisestablishmentarianism" do
      it "returns shmentarianismantidisestabli" do
        expect(Retsec.convert("antidisestablishmentarianism")).to eql("shmentarianismantidisestabli")
      end
    end
  end
end
