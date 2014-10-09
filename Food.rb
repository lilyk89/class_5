class Food

attr_accessor :name, :noise, :eaten, :rotten, :bought

def initialize(name, noise, eaten, rotten, bought)
	@name = name
	@noise = noise
	@eaten = eaten
	@rotten = rotten
	@bought = bought
	end
end