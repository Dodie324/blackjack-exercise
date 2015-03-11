class User
end

class Admin
end

class Customer
  def initialize
    @name = name
    @cart = Cart.new(self)
  end

  def name
    @name
  end

  def cart
    #want Customer class to have reference to Cart object
    @cart
  end

end

class Cart
  def initialize(customer)
    @customer = customer
  end

  def customer
    @customer
  end

  def contents
    "contents"
  end
end

class Item
end


# print out customer shopping Cart
tom = Customer.new("tom")
puts "#{tom.name}'s Cart:"
puts "#{tom.name}'s #{tom.cart.contents}"
puts "#{tom.name}'s carts customer is: #{tom.cart.customer}"
