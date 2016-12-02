#
#
#

class Weather
	def initialize
		@change = false
		@observers = Array.new
		@weather_data = WeatherData.new
	end

	def add_observer(ob)
		@observers << ob
	end

	def remove_observer(ob)
		@observers.delete ob
	end

	def notifiy_observers
		@observers.each do |ob|
			# notifiy every oberver
			ob.update(get_temp, get_humidity, get_pressure)
		end
	end
	
	def get_temp
		@weather_data.get_temp
	end

	def get_humidity
		@weather_data.get_humid
	end

	def get_pressure
		@weather_data.get_pres
	end

	def set_change
		@change = true
	end

	def clear_change
		@change = false
	end

	def has_change?
		@change
	end
	
end

class WeatherData
        def initialize
                @th = Thread.new do  
                        # Temp, Humidity, Pressure
			loop do
				@weather_data = [rand(30), rand(10)+100, rand]
			end
                end 
        end 

        def get_temp
                @th.weather_data[0]
        end 

        def get_humid
                @th.weather_data[1]
        end 

        def get_pres
                @th.weather_data[1]
        end 
end

module Update
	def update(temp, humid, pres)
		self.temp = temp
		self.humid = humid
		self.pres = pres
		display
	end

	def display
		printf("Temp:%3s\"C Humid:%4s\"H Pressure:%5s",self.temp,
				self.humid, self.pres)
	end

end

class ObServer1
		include Update
	def initialize
		@temp, @humid, @pres = 0
	end
end

class ObServer2 < ObServer1
end

weather = Weather.new
ob1 = ObServer1.new
ob2 = ObServer2.new

weather.add_observer ob1
weather.add_observer ob2

weather.notifiy_observers
