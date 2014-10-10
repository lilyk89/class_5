#gives us a little delay between solutions
wait_time = 5
def wait(time)
  print "waiting for #{time}"
  while time > 0
    time -= 1
    sleep 1
    print " #{time}"
  end
  puts ""
end


# Hello ____!

puts "Give us your name! Do it now!"
name = gets.chomp
puts "Hello #{name}"

wait wait_time
#Hello Jac or Jill!
puts "Give us your name! Do it now!"
name = gets.chomp
if name.downcase == "jack" || name.downcase == "jill"
  puts "Oh hey #{name}, nice to see you!"
else
  puts "We don't like your kind around here!"
end

wait wait_time
#Let's add to N!
puts "give us the number you'd like to work with"
num = gets.chomp.to_i
answer = count = 0
while count <= num do
  answer = answer + count
  count += 1
end
puts "the sum from 1 to #{num} is #{answer}"

wait wait_time
#Add or Multiply (you decide!)

puts "give us the number you'd like to work with"
num = gets.chomp.to_i
puts "would you like to add or multiply? type 1 for add, 2 for multiply:"
input = gets.chomp.to_i
answer = count = 0
if input == 1
  while count <= num do
    answer = answer + count
    count += 1
  end
  puts "the sum from 1 to #{num} is #{answer}"
elsif input == 2
  answer = count = 1
  while count <= num do
    answer = answer * count
    count += 1
  end
  puts "the product from 1 to #{num} is #{answer}"

else
  puts "that's not one or two! I'm outa here!"
end

wait wait_time
#Secret Number
secret = 5
tries = temp = 3
guessed = false
puts "guess the secret number!"
while temp > 0

  guess = gets.chomp.to_i
  temp -= 1

  if guess > secret
    puts "you guessed too high!"
  elsif guess < secret
    puts "you guessed too low!"
  else
    puts "good job, you got it!"
    puts "it took you #{tries - temp} #{tries - temp == 1 ? "try" : "tries" }"
    guessed = true
    break
  end
end

if !guessed
  puts "you didn't guess the number, sorry :/"
end

wait wait_time
#Sparkle magic

list = ["Hello", "World", "in", "a", "frame"]

max_length = list.max_by(&:length).length

puts "max_length is #{max_length}"

#the top and bottom star borders are a little longer than max_length
border_length = max_length + 2
border_length.times do
 print "*"
end

#line break cuz I'm lazy
puts ""

list.each do |item|
  print "*"
  remaining = max_length - item.length
  print "#{item}"
  remaining.times do
    print " "
  end
  puts "*"
end

border_length.times do
 print "*"
end

puts ""

wait wait_time
#BewdRocks or how I learned to love the modulus
(1..75).each do |num|
  message = ""
  message << "fizz" if num % 3 == 0
  message << "buzz" if num % 5 == 0
  message << num.to_s if message.length == 0
  puts message
end


wait wait_time
#Weather Stats


smallest_val = nil
smallest_column = nil
stat_array = IO.read("/Users/jon/Downloads/weather.dat").split("\n")

#remove the first two lines since they contain no data
stat_array.shift(2)
stat_array.each do |str|

  #split up data on blank spaces
  fmt_col = str.split(/\s+/)

  #remove asterisks
  fmt_col[2][-1] = fmt_col[2][-1] == "*" ? "" : fmt_col[2][-1]
  fmt_col[3][-1] = fmt_col[3][-1] == "*" ? "" : fmt_col[3][-1]

  puts "fmt_col is #{fmt_col[1]}"
  if fmt_col[0] != "mo" && (smallest_val == nil || fmt_col[2].to_f - fmt_col[3].to_f < smallest_val)
    puts "difference is #{fmt_col[2]} - #{fmt_col[3]} = #{fmt_col[2].to_f - fmt_col[3].to_f}"
    smallest_column = fmt_col[1]
    smallest_val = fmt_col[2].to_f - fmt_col[3].to_f
  end
end

puts "smallest column is #{smallest_column} and value is #{smallest_val}"

wait wait_time
#Swapping

swap = "hello 3blah5"

swap = swap.swapcase
swap.gsub!(/(\d)(\w+)(\d)/,'\3\2\1')

puts swap