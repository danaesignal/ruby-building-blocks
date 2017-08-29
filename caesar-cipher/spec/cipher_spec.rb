require "cipher"

describe "caesar_cipher" do
  context "given an empty string and any number" do
    it "returns an empty string" do
      expect(caesar_cipher("",5)).to eql("")
    end
  end

  context "given the letter z and the number 1" do
    it "returns the letter a" do
      expect(caesar_cipher("z",1)).to eql("a")
    end
  end

  context "given the letter a and the number -1" do
    it "returns the letter z" do
      expect(caesar_cipher("a",-1)).to eql("z")
    end
  end

  context "given any string and zero" do
    it "returns the same string" do
      expect(caesar_cipher("this is a string",0)).to eql("this is a string")
    end
  end

  context "given two words and the number 5" do
    it "returns two words with unmodified spacing and letters shifted 5 letters ahead" do
      expect(caesar_cipher("these words",5)).to eql("ymjxj btwix")
    end
  end
end
