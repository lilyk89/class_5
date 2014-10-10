require_relative 'User.rb'
require_relative 'Food.rb'
 
 lily = User.new("Lily","Kaiser","lkaiser","lilyk89@gmail.com",25,2,0)
 chips = Food.new("chips","crunch",0,false,0)

chips.bought = 6
chips.rotten = false
5.times {lily.forget(chips)}
lily.eat(chips)
chips.bought