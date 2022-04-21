require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :titleize => "Chef chef the Great Baker") }
  subject(:dessert) { Dessert.new('cookies', 4, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('cookies')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(4)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new('cookies', :hello, chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('sugar')
      expect(dessert.ingredients).to include('sugar')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient('milk')
      dessert.add_ingredient('sugar')
      dessert.add_ingredient('water')
      dessert.add_ingredient('flour')
      dessert.add_ingredient('chocolate')
      ordered = dessert.ingredients.dup
      expect(dessert.mix!).to_not eq(ordered)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(4)
      expect(dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ dessert.eat(11) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include('Chef chef the Great Baker')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(dessert)
      expect(dessert.make_more).to eq(nil)
    end
  end
end
