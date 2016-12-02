class Character
	

	def set_weapon w
		@weapon = w
	end

	def fight
		@weapon.use_weapon
	end
end

class Weapon
	def use_weapon
		
	end
end

class Sword < Weapon
	def use_weapon
		puts "useing sword to kill you"
	end
end

class Knife < Weapon
	def use_weapon
		puts "useing Knife "
	end
end

class Bow < Weapon
	def use_weapon
		puts "useing Bow"
	end
end

class Axe < Weapon
	def use_weapon
		puts "useing Axe"
	end
end


class King < Character
	def initialize
		@weapon = Knife.new
	end
end

class Queen < Character
	def initialize
		@weapon = Bow.new
	end
end

	
