=begin
load "beverage.rb"

yin = HouseBlend.new
yin = Milk.new yin
yin = Soy.new yin
yin = Mocha.new yin

yin.cost
yin.get_desc
=end

load "rubyforbeverage.rb"

yin = HouseBlend.new
yin.add_cond Milk
p yin.desc
