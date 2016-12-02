# Use extend 

class Beverage
	def desc
	end

	def cost
	end

	def add_cond cond
		extend cond
	end
end

class HouseBlend < Beverage
	def desc
		"HouseBlend"
	end

	def cost
		2.1
	end
end

	module Milk
		def desc
			super + " + Milk"
		end

		def cost
			super + 0.4
		end
	end

	module Mocha
		def desc
			super + " + Mocha"
		end

		def cost
			super + 0.5
		end
	end

