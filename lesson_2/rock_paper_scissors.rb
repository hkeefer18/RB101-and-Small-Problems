VALID_CHOICES = %w(rock paper scissors lizard spock)

valid_choices_shortened = {
  r: 'rock',
  l: 'lizard',
  sp: 'spock',
  sc: 'scissors',
  p: 'paper'
}

# Game rules
key_beats_value = {
  rock: [:lizard, :scissors],
  lizard: [:spock, :paper],
  spock: [:rock, :scissors],
  scissors: [:lizard, :paper],
  paper: [:rock, :spock]
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Iterates through the key_beats_value hash and returns
# true when it gets to the key-value pairing that matches
# the player choice and computer choice and returns false
# otherwise. Method returns an array of falses and one true
# in the order that it was encountered in the hash, or all
# falses in the case of a tie.
def array_with_true_if_win(first, second, winning_hash)
  array = []
  winning_hash.each do |key, value|
    array << (first.to_sym == key && second.to_sym == value[0])
    array << (first.to_sym == key && second.to_sym == value[1])
  end
  array
end

# Checks to see if the array returned by above method
# contains a true, meaning someone won.
def win?(first, second, winning_hash)
  array_with_true_if_win(first, second, winning_hash).include? true
end

# Checks the position of the true value in the array created
# above and matches it with the corresponding explanation
# of the win.
def winning_explanation(first, second, winning_hash)
  array = array_with_true_if_win(first, second, winning_hash)
  case array.index { |x| x == true }
  when 0 then 'Rock crushes Lizard!'
  when 1 then 'Rock crushes Scissors!'
  when 2 then 'Lizard poisons Spock!'
  when 3 then 'Lizard eats Paper!'
  when 4 then 'Spock vaporizes Rock!'
  when 5 then 'Spock smashes Scissors!'
  when 6 then 'Scissors decapitates Lizard!'
  when 7 then 'Scissors cuts Paper!'
  when 8 then 'Paper covers Rock!'
  when 9 then 'Paper disproves Spock!'
  end
end

# Displays the winning explanation and who won
def display_result(first, second, winning_hash)
  if win?(first, second, winning_hash)
    prompt(winning_explanation(first, second, winning_hash))
    prompt("You won!")
  elsif win?(second, first, winning_hash)
    prompt(winning_explanation(second, first, winning_hash))
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# Keeps track of the player's score, returns either the previous
# score plus one for a win or the previous score unchanged.
def player_standings(first, second, winning_hash, player_wins)
  if win?(first, second, winning_hash)
    player_wins += 1
  else
    player_wins
  end
end

# Keeps track of the computer's score, returns either the previous
# score plus one for a win or the previous score unchanged.
def computer_standings(first, second, winning_hash, computer_wins)
  if win?(second, first, winning_hash)
    computer_wins += 1
  else
    computer_wins
  end
end

# Starts the scores at 0. Not included in loop,
# otherwise the scores would go back to 0 at each
# iteration of the loop.
current_player_wins = 0
current_computer_wins = 0

prompt('Welcome to Rock Paper Scissors Lizard Spock!')
prompt('Win 5 times to be the Grand Winner and end the match!')
prompt('')

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("Type r for rock, p for paper, sc for scissors,")
    prompt("l for lizard, sp for spock.")
    choice_shortened = Kernel.gets().chomp()

    # Assigns choice to the full word from the hash that
    # matches the shortened word to the full word
    choice = valid_choices_shortened[choice_shortened.to_sym]

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  display_result(choice, computer_choice, key_beats_value)

  current_player_wins =
    player_standings(choice, computer_choice,
                     key_beats_value, current_player_wins)
  current_computer_wins =
    computer_standings(choice, computer_choice,
                       key_beats_value, current_computer_wins)

  prompt('')
  prompt("Current standings:")
  prompt("Player: #{current_player_wins}")
  prompt("Computer: #{current_computer_wins}")
  prompt('')

  if current_computer_wins == 5
    prompt("Grand Winner is Computer!")
    break
  elsif current_player_wins == 5
    prompt("You are the Grand Winner!")
    break
  end

  prompt("Do you want to play again? Y or N")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('')
prompt("Thank you for playing. Good bye!")

=begin

Used this method for win? before I decided I wanted the winning
explanation. I needed a new method that would return an
array to check what the winning combination was and a separate
method to determine if someone won. I could have used this
still but with the array I made a shorter win? method.

def win?(first, second, winning_hash)
  win = ''
  winning_hash.each do |key, value|
    if first.to_sym == key && second.to_sym == (value[0] || value[1])
      win = true
      break
    else
      win = false
    end
  end
  win
end
=end

=begin

First win? method for classic RPS

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end
=end
