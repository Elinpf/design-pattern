class PizzaStore

	def order style
		pizza = SampleFactory.create_pizza style
		pizza.cut
		pizza.box
	end
end

class SampleFactory
	def self.create_pizza style
		return NYPizza.new if style == "NYPizza"
		return CNPizza.new if style == "CNPizza"
	end
end

class Pizza
	def cut
	end
	
	def box
		puts "Place Pizza into box"
	end
end

class NYPizza < Pizza
	def cut
		puts "NY Style cut"
	end
end

class CNPizza < Pizza
	def cut
		puts "CN Style cut"
	end
end

		
