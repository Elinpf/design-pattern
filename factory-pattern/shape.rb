class Shape
	def drwa
	end
end

class ShapeFactory
	def get_shape 
	end

	def order 
		get_shape
	end
end

class CircleFactory < ShapeFactory
	def get_shap
		return Circle.new
	end
end

class SquareFactory < ShapeFactory
	def get_shape
		return Square.new
	end
end

class RectangleFactory < ShapeFactory
	def get_shape
		return Rectangle.new
	end
end

#################

class Circle < Shape
	def draw
		puts "This is Circle"
	end
end

class Square < Shape
	def draw
		puts "This is Square"
	end
end

class Rectangle < Shape
	def draw
		puts "This is Rectangle"
	end
end

ShapeFactory.new
