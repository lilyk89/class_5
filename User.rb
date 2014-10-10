class User

attr_accessor :first_name, :last_name, :username, :email, :age, :meals_eaten, :weight

def initialize(first_name, last_name, username, email, age, meals_eaten, weight)
	puts "Can't be nil try again" if first_name == nil || last_name == nil || username == nil || email == nil || weight == nil
	@first_name = first_name
	@last_name = last_name
	@username = username
	@email = email
	@age = age
	@meals_eaten = meals_eaten
	@weight = weight
end
def full_name
	puts "#{first_name} #{last_name}"
end
def eat(food)
	if food.bought == 0
		puts "No food to eat!"
	elsif @meals_eaten >= 3
		puts "I\'m not hungry"
	elsif food.rotten == true
		puts "Cough cough cough \n Let's throw this out"
		food.bought = 0
	else food.rotten == false
		3.times {puts "#{food.noise}"}
		food.eaten = 1
		@meals_eaten += 1
	end
end
def buy(food)
	food.bought += 1
end
def forget(food)
	if food.bought == 0
		puts "No food! Better go buy some"
	else
		food.rotten = true
		food.bought -= 1
	end
end
def bingeat(food)
	if food.bought < 10
		puts "Not enough food to binge!"
	elsif food.rotten == true
		puts "Cough cough cough \n Let's throw this out"
		food.bought = 0
	else 
		@meals_eaten += 3
		food.eaten += 10
		food.bought -= 10
		@weight += 5
		puts "You gained weight!"
	end
end
end