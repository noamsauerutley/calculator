require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator

end

# the string below is purely documentation
# the # symbol marks an instance method vs. a class method
describe Calculator do
  describe "#add" do
    # an it block describes the desired behavior
    it "returns the sum of its two arguments" do
      calc = Calculator.new
      expect(calc.add(5, 10)).to eq(15)
    end
  end
end


