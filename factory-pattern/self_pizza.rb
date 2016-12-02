class PizzaStore
	def create_pizza
	end

	def order_pizza 
		pizza = create_pizza 
		pizza.prepare
		pizza.bake
		pizza.cut
		pizza.box
	end
end

class NYPizzaStore < PizzaStore
	def create_pizza
		NYStylePizza.new	
	end
end

class CNPizzaStore < PizzaStore
	def create_pizza 
		CNStylePizza.new
	end
end

#######################

class IngredientFactory 
	def create_dough
	end

	def create_sauce
	end

	def create_cheese
	end
end

class NYIngredientFactory < IngredientFactory
	def create_dough
		NYDough.new
	end

	def create_sauce
		NYSauce.new
	end
	
	def create_cheese
		NYCheese.new
	end
end

class CNIngredientFactory < IngredientFactory
	def create_dough
		CNDough.new
		
	end
	
	def create_sauce
		CNSauce.new
	end

	def create_cheese
		CNCheese.new
	end
end

#######################

class Dough
	def show
	end
end

class NYDough < Dough
	def show
		puts "This is NY Style Dough"
	end
end

class CNDough < Dough
	def show
		puts "This is CN Style Dough"
	end
end

class Sauce
	def show
	end
end

class NYSauce < Sauce
	def show
		puts "This is NY Style Sauce"
	end
end

class CNSauce < Sauce
	def show 
		puts "This is CN Style Sauce"
	end
end

class Cheese
	def show
	end
end

class NYCheese < Cheese
	def show
		puts "This is NY Style Cheese"
	end
end

class CNCheese < Cheese
	def show
		puts "This is CN Style Cheese"
	end
end

###################

class Pizza
	def initialize ingredient
		@name
		@dough
		@sauce
		@cheese
		@ingredient = ingredient
	end
	def prepare
		@ingredient.create_dough.show
		@ingredient.create_sauce.show
		@ingredient.create_cheese.show
	end

	def bake
		puts "Bake 25 min"
	end

	def cut
		puts "Cutting..."
	end

	def box
		puts "Place Pizza into box"
	end
end

class NYStylePizza < Pizza
	def initialize
		super(NYIngredientFactory.new)
	end

end
		
class CNStylePizza < Pizza
	def initialize 
		super(CNIngredientFactory.new)
	end
end
