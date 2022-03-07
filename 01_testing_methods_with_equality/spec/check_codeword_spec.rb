require "check_codeword"

RSpec.describe "#check_codeword" do
  context "when the codeword is 'horse'" do
    it "should return 'Correct! Come in.'" do
      expect(check_codeword("horse")).to eq("Correct! Come in.")
    end
  end

  context "when the codeword begins with 'h' and ends in 'e'" do
    it "should return 'Close, but nope.'" do
      expect(check_codeword("house")). to eq("Close, but nope.")
      expect(check_codeword("hassle")).to eq("Close, but nope.")
    end
  end

  context "when any other codeword is given" do
    it "should return 'WRONG!'" do
      expect(check_codeword("porridge")).to eq("WRONG!")
      expect(check_codeword("duck")).to eq("WRONG!")
    end
  end




end

  
