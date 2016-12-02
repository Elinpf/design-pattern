class Beverage
	@desc = "Nothing"
	def get_desc
	end

	def cost
	end
end

class HouseBlend < Beverage
	def cost
		return 2.1
	end

	def get_desc
		return "HouseBlend"
	end
end

class DardRoast < Beverage
	def cost
		return 3.1
	end

	def get_desc
		return "DardRoast"
	end
end

###
#
###
class Condiment < Beverage
	def initialize(cond)
		@cond = cond
	end
end

class Milk < Condiment
	def get_desc
		@cond.get_desc + " + Milk"
	end

	def cost
		@cond.cost + 0.4
	end
end

class Mocha < Condiment
	def get_desc
		@cond.get_desc + " + Mocha"
	end

	def cost
		@cond.cost + 0.5
	end
end

class Soy < Condiment
	def get_desc
		@cond.get_desc + " + Soy"
	end

	def cost
		@cond.cost + 0.6
	end
end
