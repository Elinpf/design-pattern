=begin
load "pizza_store.rb"

ny_pizza = NYPizzaStore.new
cn_pizza = ChinaPizzaStore.new

ny_pizza.order_pizza "Cheese"
puts ""
cn_pizza.order_pizza "Cheese"

load "self_pizza.rb"

ny_pizza = NYPizzaStore.new

ny_pizza.order_pizza


load "sample_pizza.rb"

factory = SampleFactory.new
ps = PizzaStore.new factory
ps.order "CNPizza"

load "factory_pizza.rb"

ny_ps = NYPizzaStore.new
ny_ps.order_pizza "Cheese"
=end

load "ab_factory_pizza.rb"

ny_ps = NYPizzaStore.new
ny_ps.order_pizza "Cheese"
