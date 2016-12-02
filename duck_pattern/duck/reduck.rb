require "./core.rb"

class RedDuck < Duck
	def initialize
		@@fly = Fly.new
		@@quack = QuackGG.new
	end

	def display
		puts "I'm the Red Duck!!!"
	end
end
