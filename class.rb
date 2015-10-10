class Lunch
	attr_accessor :price
end

class Taco < Lunch
	attr_accessor :name
end


lunch = Taco.new
lunch.name = "carnitas"
name = lunch.name
lunch.price = "2"
price = lunch.price
puts "For lunch, I will have a #{name} taco for $#{price} dollar(s), please!"

puts lunch.inspect


