### Livecode
# Coding the Price is Right!
# Ask user for a price
# Keep asking *UNTIL* user guesses the right price

# Pseudo-Code
# 0 - Determining the price that my user should guess
# 1 - Asking user for a price
# 2 - Build a loop to keep asking - using *until*
# 3 - Tell my user they won

### Homework (Price is Right)
# 1) Give a hint to the user whether their guess was too high or too low
# 2) When you congratulate the user, tell them how many times it took them to guess

puts "How much is our iPhone12Pro 256GB deal today ?"
puts "(Hint: Price range between 105,000 - 140,000 yen)"
puts ""
deal_price = rand(105..140) # Random Integer for price in 100s between 105000-140000

user_num = 0 # *Initializing* user_num
times = 0

until user_num == deal_price
  puts 'Guess the price from 105 - 140 (thousands) yen!'
  user_num = gets.chomp.to_i # Turning user inpu into an integer
  times += 1
  next if user_num == deal_price
    if user_num < deal_price
      puts "Your guess was too low. Try again!"
      puts ""
    else
      puts "Your guess was too high. try again!"
      puts ""
    end
end

puts "You guessed right! #{user_num},000 yen"
if times == 1
  puts "Well done! You made it with 1 guess!"
else
  puts "You made #{times} guesses"
end