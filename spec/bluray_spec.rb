require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @test_case = Bluray.new( "Disney Magic", 19.99, 120, "Mickey Mouse", "Donald Duck")
    # initialize item
  end

  describe 'Initialization' do
    it 'is an instance of Item' do
      expect(@test_case).to be_instance_of(Bluray)
    end

    it 'should be an Item' do
      expect(@test_case).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@test_case.name).to eq('Disney Magic')
    end

    it 'is assigned a price' do
      expect(@test_case.price).to eq(19.99)
    end

    it 'is assigned runtime' do
      expect(@test_case.runtime).to eq(120)
    end

    it 'is assigned an producer' do
      expect(@test_case.producer).to eq('Mickey Mouse')
    end

    it 'is assigned an director' do
      expect(@test_case.director).to eq('Donald Duck')
    end
  end

  describe 'getters and setters' do

    it 'assigns and reads the name' do
      @test_case.name = 'Disney Princesses'
      expect(@test_case.name).to eq('Disney Princesses')
    end

    it 'assigns and reads the price' do
      @test_case.price = 33
      expect(@test_case.price).to eq(33)
    end

    it 'assigns and reads the runtime' do
      @test_case.runtime = 300
      expect(@test_case.runtime).to eq(300)
    end

    it 'assigns and reads the director' do
      @test_case.director = 'Cinderella'
      expect(@test_case.director).to eq('Cinderella')
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @test_case.stock 5
      expect(result).to eq(true)
      expect(@test_case.quantity).to eq(5)
    end
    it 'should not be able to sell more blurays than we have' do
      result = @test_case.sell 6
      expect(result).to eq(false)
      expect(@test_case.quantity).to eq(5)
    end
    it 'should be able to sell blurays and update quantity' do
      result = @test_case.sell 3
      expect(result).to eq(true)
      expect(@test_case.quantity).to eq(2)
    end
  end

  




  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
end
