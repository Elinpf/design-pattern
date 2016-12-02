class Light
	def on
		puts "Light On"
	end

	def off
		ptus "Light off"
	end
end

class LightOnCommand
	def initialize light
		@light = light
	end

	def execute
		@light.on
	end
end

class SampleControl
	def set_command command
		@solt = command
	end

	def button
		@solt.execute
	end
end

light = Light.new
command = LightOnCommand.new light
sc = SampleControl.new
sc.set_command command
sc.button
