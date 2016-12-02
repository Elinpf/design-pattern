class PizzaStore
	def create_pizza style
	end

	def order_pizza style
		pizza = create_pizza style
		pizza.prepare
		pizza.bake
		pizza.cut
		pizza.box

		return pizza
	end
end

class NYPizzaStore < PizzaStore
	def create_pizza style
		NYStyleCheesePizza.new if style == "Cheese"
	end
end

class ChinaPizzaStore < PizzaStore
	def create_pizza style
		ChinaStyleCheesePizza.new if style == "Cheese"
	end
end

class Pizza
	def initialize
		@name
		@dough
		@sauce
		@topping = Array.new
	end

	def prepare
		puts "Preparing " + @name
		puts "Tossing dough..."
		puts "Adding sauce..."
		puts "Adding topping:"
		@topping.each do |top|
			puts "  Dumping the " + top
		end
	end

	def bake
		puts "Bake for 25 minutes at 350"
	end

	def cut
		puts "Cutting the pizza into diagonal slices"
	end

	def box
		puts "Place pizza in official PizzaStore box"
	end

	def get_name	
		return @name
	end
end

class NYStyleCheesePizza < Pizza
	def initialize
		super
		@name 	= "NY Style Sauce and Cheese Pizza"
		@dough 	= "Thin Crust Dough"
		@sauce 	= "Marinara Sauce"
		@topping << "Grated Reggiano Cheese"
	end
end

class ChinaStyleCheesePizza < Pizza
	def initialize
		super
		@name 	= "China Style Sauce and Cheese Pizza"
		@dough 	= "Extra Thick Crust Dough"
		@sauce 	= "Plum Tomato Sauce"
		@topping << "Shredded Mozzarella Cheese"
	end

	def cut
		puts "Cutting the pizza into square slices"
	end
end
