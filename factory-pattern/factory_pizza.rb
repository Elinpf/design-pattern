class PizzaStore
	def create_pizza
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
		Factory.create style
	end
end

class Factory
	def self.create style
		return NYCheesePizza.new if style == "Cheese"
	end
end

class Pizza
	def perpare
	end

	def cut
	end

	def box
		puts "Place pizza into Box"
	end
end

class NYCheesePizza < Pizza
	def perpare
		puts "Dump Cheese"
	end

	def cut
		puts "NY Style Pizza"
	end
end
