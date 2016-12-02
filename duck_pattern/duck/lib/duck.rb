class Duck
	def initialize
	end

	def swim
		puts "I can swimming"
	end

	def display
	end

	def fly
		@fly.fly
	end
	
	def per_quack
		@quack.quack
	end

#attr_reader :fly, :quack
		
end

class Fly
	def fly
	end
end

class FlyHigh
	def fly
		puts "I'm flying"
	end
end

class FlyNoWay
	def fly
		puts "I can't fly"
	end
end

class Quack
	def quack
	end
end

class QuackGG < Quack
	def quack
		puts "gg...g"
	end
end

class QuackZZ < Quack
	def quack
		puts "zz.zz"
	end
end

class RedDuck < Duck
	def initialize
		@fly = FlyHigh.new
		@quack = QuackGG.new
	end

	def display
		puts "I'm Red !!"
	end
end

class BlackDuck < Duck
	def initialize
		@fly = FlyNoWay.new
		@quack = QuackZZ.new
	end

	def display
		puts "I'm Black .."
	end
end

rduck = RedDuck.new
bduck = BlackDuck.new

rduck.fly

