require_relative 'item.rb'

class Bluray < Item
  attr_accessor :name, :price, :description, :runtime, :producer, :director
  attr_reader :quantity

  def initialize(name, price, runtime, producer, director)
     super(name, price)
     @runtime=runtime
     @producer=producer
     @director=director
  end


end
