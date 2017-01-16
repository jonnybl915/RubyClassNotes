require 'rspec'

class Item

  attr_reader :name, :price
  def initialize(name, price)
    @name, @price = name, price
    # equal to each other
    # @name = name
    # @price = price
  end
  # can use attr_reader or the code below...
  # def name
  #   @name
  # end
  # def price
  #   @price
  # end
end

class Cart
  attr_reader :total_price
  def initialize
    @total_price = 0
    @cart = []
  end
  def add_item(item)
    @cart.push(item)
  end
  def total_price
    total = 0
    @cart.each do |item|
      total += item.price
    end
    total
  end
end

describe Item do

  #  This line helps with using the same variables across multiple tests
  #  Space saver and performance optimization
  let(:the_item) { Item.new 'PB & J', 2}
  ######################################

  it 'has a name' do
    # the_item = Item.new 'PB & J', 2
    expect(the_item.name).to eq 'PB & J'
  end
  it 'has a price' do
    # the_item = Item.new 'PB & J', 2
    expect(the_item.price).to eq 2
  end
end

describe Cart do
  it 'can hold multiple items' do
    c = Cart.new

    # expect(c.total_price).to eq 0

    c.add_item Item.new('Coffee', 4)
    c.add_item Item.new('Coffee', 4)

    expect(c.total_price).to eq 8
  end
end