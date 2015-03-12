require 'inject'

describe "The inject method" do

  context "Addition" do

    it "returns 10 for an array with 1,2,3,4" do
      expect([1,2,3,4].my_inject{ |a, b| a + b }).to eq(10)
    end
  end

  context "Subtraction" do

    it "returns -8 for an array with 1,2,3,4" do
      expect([1,2,3,4].my_inject{ |a, b| a - b }).to eq(-8)
    end
  end

  context "Multiplication" do

    it "returns 24 for an array with 1,2,3,4" do
      expect([1,2,3,4].my_inject{ |a, b| a * b }).to eq(24)
    end
  end

  context "Division" do

    it "returns 0 for an array with 1,2,3,4" do
      expect([1,2,3,4].my_inject{ |a, b| a / b }).to eq(0)
    end
  end

   context "Adding a string together" do

    it "returns MyInject for array My Inject" do
      expect(["My", "Inject"].my_inject{ |a, b| a + b }).to eq "MyInject"
    end
  end

end