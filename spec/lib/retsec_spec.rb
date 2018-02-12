# require_relative '../../lib/retsec'
require "retsec"

RSpec.describe Retsec do

  context "returning a string with even digits" do

    describe "given the string secret" do
      it "returns retsec" do
        expect(Retsec.convert("secret")).to eql("retsec")
      end
    end
  end
end
