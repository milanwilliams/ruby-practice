class Product
  # initializes the product element
  attr_reader :price, :id, :quantity
  def initialize (price, id, quantity)
    @price = price
    @id = id
    @quantity = quantity
  end

  # returns the current stock of an item
  def product_value
    puts "You have #{@quantity} #{@id} remaining at #{@price} dollars each!"
  end
end

class Inventory
  # creates the Inventory
  def initialize
    @items = []
  end

  # adds items to the inventory
  def <<(item)
    @items << item
  end

  # calulates the current value of an item list in the inventory
  def value
    @items.map{ |x| x.price * x.quantity}.inject(:+)
  end
end

if __FILE__ == $0

  # sample tests of elements
  mascara = Product.new(10, "mascara", 3)
  eyeliner = Product.new(5, "eyeliner", 5)
  blush = Product.new(12, "blush", 4)

  my_inventory = Inventory.new

  # adds current items to the inventory
  [mascara, eyeliner, blush].each do |item|
    my_inventory.<< item
  end

  # returns the total inventory value (I've spent too much on makeup!)
  puts "My total inventory value is #{my_inventory.value}"

end
