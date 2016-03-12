# Generate random number between 1 and 100 and ask you for a guess
# If guess is less, tell you were low and let you guess again.
# If guess is greater, tell you were high and let you guess again.
# If guess is correct, tell you that you win and then quit.
# Other requirements:
# After 5 incorrect guesses, the program should tell you that you lose.
# If guess same number twice, ask you if you're feeling all right
# Your code should include  at least two methods.
# This game should be run from the command line by typing "ruby guessing_game.rb".

def random_num_generator
  return rand(1..100)
end

def guessing_game # Created a method to encapsulate the conditional code
  puts "Guess my random number between 1 and 100."
  num = random_num_generator
  count = 0
  input_array = []

  while count < 5
    user_input = gets.chomp
    count += 1
    if count == 5 && user_input.to_i != num
      puts "You lose."
    elsif input_array.include?(user_input)
      puts "Are you ill, Doc? Guess a new number."
        # To test if user_input == user_input(previous) I need an array to
        # reference past inputs; b/c control flow this needs to go above the
        # valid guesses getting shoveled into the array
    elsif user_input.to_i < num
      puts "You're low, guess again, bub."
      input_array << user_input
    elsif user_input.to_i > num
      puts "You're high, play it again Sam."
      input_array << user_input
    else user_input.to_i == num
        puts "You win!"
        break
        # Class review: break is the keyword to specify the program should quit
    end
  end
end

guessing_game
