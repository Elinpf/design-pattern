class Operation
	attr_accessor :a, :b
	
	def result
		0
	end
end

module Oper
class OperationFactory
	def create_operation
		OperationAdd.new
	end
end
