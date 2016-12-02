class Pizza
	
	def perpare
	end

	def cut
	end

	def box
		puts "Place pizza into Box"
	end
end

class CheesePizza < Pizza
	def initialize igFactory
		@igFactory = igFactory
	end
	
	def perpare
		@igFactory.create_cheese.dump
		@igFactory.create_sauce.dump
	end
end

class IGFactory
	def create_cheese
	end

	def create_sauce
	end
end

class NYIGFactory < IGFactory
	def create_cheese
		return NYCheese.new
	end

	def create_sauce
		return NYSauce.new
	end
end

class NYCheese
	def dump
		puts "NY Style Cheese"
	end
end

class NYSauce
	def dump
		puts "NY Style Sauce"
	end
end

class PizzaStore
	def create_pizza style
	end

	def order_pizza style
		pizza = create_pizza style
		pizza.perpare
		pizza.cut
		pizza.box
	end
end

class NYPizzaStore < PizzaStore
	def create_pizza style
		if style == "Cheese"
			ig = NYIGFactory.new
			return CheesePizza.new ig
		end
	end
end
