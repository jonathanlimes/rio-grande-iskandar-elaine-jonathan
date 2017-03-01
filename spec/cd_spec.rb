require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # what is the difference between :each and :context?
    @cd = Cd.new('Mockingbird', 12.99, 10, "Eminem", 30)
  end

  # check initialization
  describe "Initialization" do
    it "is an instance of the Cd class" do
      expect(@cd).to be_instance_of(Cd)
    end
    # check that it is an instance of Cd
    it "is also a sub-class of Item class" do
      expect(@cd).to be_kind_of(Item)
    end
    # check for its vital parameters
    it "is assigned a name" do
      expect(@cd.name).to eq('Mockingbird')
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(12.99)
    end
    it "is assigned a number of tracks" do
      expect(@cd.tracks).to eq(10)
    end
    it "is assigned an artist" do
      expect(@cd.artist).to eq("Eminem")
    end
    it "is assigned a run time" do
      expect(@cd.run_time).to eq(30)
    end
  end

  describe "Getters/Setters" do
    it "should be able to get quantity" do
      expect(@cd.quantity).to eq(0)
    end
    it "should be able to get and set price" do
      @cd.price = 13.99
      expect(@cd.price).to eq(13.99)
    end
    it "should be able to get and set description" do
      expect(@cd.description).to eq('')
      @cd.description = 'this is a great album'
      expect(@cd.description).to eq('this is a great album')
    end
  end

  describe "Methods" do
    it "should be able to stock up" do
      result = @cd.stock 10
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(10)
    end
    it "should not be able to sell more items than the current stock" do
      # @cd.quantity = 10
      result = @cd.sell 11
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(10)
    end
    it "should be able to sell items and update the current stock" do
      # @cd.quantity = 10
      result = @cd.sell 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
  end
end
