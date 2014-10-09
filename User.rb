class User

attr_accessor :first_name, :last_name, :username, :email, :age, :meals_eaten, :weight

def initialize(first_name, last_name, username, email, age, meals_eaten, weight)
	puts "Can't be nil try again" if first_name == nil || last_name == nil || username == nil || email == nil || weight = nil
	@first_name = first_name
	@last_name = last_name
	@username = username
	@email = email
	@age = age
	@meals_eaten = meals_eaten
	@weight = weight
end
def full_name
	puts "#{@first_name} #{}{@last_name}"
end
def eat(food)
	puts food.noise
	food.eaten = true
	@meals_eaten += 1
end
def buy(food)
	food.bought = true
end
def forget(food)
	food.rotten = true
end
def bingeat(food)
	
end

