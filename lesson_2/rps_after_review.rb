VALID_CHOICES = %w(rock paper scissors lizard spock)

valid_choices_shortened = {
  r: 'rock',
  l: 'lizard',
  sp: 'spock',
  sc: 'scissors',
  p: 'paper'
}

key_beats_value = {
  rock: { lizard: 'Rock crushes Lizard!', scissors: 'Rock crushes Scissors!' },
  lizard: { spock: 'Lizard poisons Spock!', paper: 'Lizard eats Paper!' },
  spock: { rock: 'Spock vaporizes Rock!', scissors: 'Spock smashes Scissors!' },
  scissors: { lizard: 'Scissors decapitates Lizard!',
              paper: 'Scissors cuts Paper!' },
  paper: { rock: 'Paper covers Rock!', spock: 'Paper disproves Spock!' }
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def welcome_prompt
  prompt('Welcome to Rock Paper Scissors Lizard Spock!')
  prompt('Win 5 times to be the Grand Winner and end the match!')
  prompt('')
end

def player_chooses_move(choices_shortened)
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("Type r for rock, p for paper, sc for scissors,")
    prompt("l for lizard, sp for spock.")
    choice = choices_shortened[Kernel.gets.chomp.to_sym]

    if VALID_CHOICES.include?(choice)
      return choice
    else
      prompt("That's not a valid choice.")
    end
  end
end

def computer_chooses_move
  VALID_CHOICES.sample
end

def display_choices(player, computer)
  prompt("You chose: #{player}; Computer chose: #{computer}")
end

def win?(first, second, winning_hash)
  winning_hash[first.to_sym].include?(second.to_sym)
end

def display_winning_explanation(first, second, winning_hash)
  if win?(first, second, winning_hash)
    prompt(winning_hash[first.to_sym][second.to_sym])
  elsif win?(second, first, winning_hash)
    prompt(winning_hash[second.to_sym][first.to_sym])
  end
end

def display_result(first, second, winning_hash)
  if win?(first, second, winning_hash)
    prompt("You won!")
  elsif win?(second, first, winning_hash)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_scores(first, second, winning_hash, scores)
  if win?(first, second, winning_hash)
    scores[:player] += 1
  elsif win?(second, first, winning_hash)
    scores[:computer] += 1
  end
end

def display_scores(scores)
  prompt('')
  prompt("Current standings:")
  prompt("Player: #{scores[:player]}")
  prompt("Computer: #{scores[:computer]}")
  prompt('')
end

def display_grand_winner(scores)
  if scores[:computer] == 5
    prompt("Grand Winner is Computer!")
  elsif scores[:player] == 5
    prompt("You are the Grand Winner!")
  end
end

def play_again?(scores)
  if scores.value?(5)
    scores[:player] = 0
    scores[:computer] = 0
    prompt("Do you want to play another tournament? Y or N")
  else
    prompt("Do you want to continue in the tournament? Y or N")
  end
  answer = Kernel.gets().chomp().downcase()
  answer == 'y' || answer == 'yes'
end

def goodbye_prompt
  prompt('')
  prompt("Thank you for playing. Good bye!")
end

welcome_prompt

current_score = { player: 0, computer: 0 }

loop do
  choice = player_chooses_move(valid_choices_shortened)

  computer_choice = computer_chooses_move

  display_choices(choice, computer_choice)

  display_winning_explanation(choice, computer_choice, key_beats_value)

  display_result(choice, computer_choice, key_beats_value)

  update_scores(choice, computer_choice, key_beats_value, current_score)

  display_scores(current_score)

  display_grand_winner(current_score)

  break unless play_again?(current_score)

  system('clear')
end

goodbye_prompt
