CARD_VALUES = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7,
                8 => 8, 9 => 9, 10 => 10, 'Jack' => 10, 'Queen' => 10,
                'King' => 10, 'Ace' => nil }

MAX = 21
HIT_UNTIL = 17

def initialize_deck
  deck = []
  CARD_VALUES.keys.each { |card| 4.times { deck << card } }
  deck.shuffle
end

def deal(dck, hand)
  card = dck.pop
  if card == 'Ace'
    hand[1] << card
  else
    hand[0] << card
  end
  card
end

def initial_deal(dck, hand1, hand2)
  2.times { deal(dck, hand1) }
  2.times { deal(dck, hand2) }
end

def prompt(msg)
  puts "=> #{msg}"
end

def pause_and_clear
  sleep 1
  system 'clear'
end

def pause_and_space
  sleep 1
  puts ''
end

def welcome_message
  prompt 'Welcome to Twenty-One'
  puts ''
  prompt "Try to get as close to #{MAX} as possible without going over."
  prompt 'Numbered cards are worth their face value.'
  prompt 'Face cards are worth 10.'
  prompt 'Aces can be worth 1 or 11.'
  prompt "Dealer must hit until their total is at least #{HIT_UNTIL}."
  prompt 'First to win 5 rounds is the champion!'
  prompt "Let's play!"
  sleep 10
end

def joinand(arr)
  cards = arr.flatten
  case cards.size
  when 2 then cards.join(' and ')
  else
    string = ''
    cards[0..-2].each { |ele| string << ele.to_s + ', ' }
    string << 'and ' + cards[-1].to_s
  end
end

def display_hand(hand, player, total)
  prompt "#{player.capitalize} has: #{joinand(hand)}"
  prompt "#{player.capitalize}'s total is #{total}"
  pause_and_space
end

def one_dealer_card(hand)
  hand.flatten.sample
end

def display_dealer_card(card)
  prompt "Dealer has: #{card} and unknown card"
  puts ''
end

def hit_or_stay
  prompt 'Would you like to hit or stay? Type H or S'
  answer = gets.chomp
  case answer.downcase
  when 'h' then 'Hit'
  when 's' then 'Stay'
  else
    prompt "That's not a valid choice."
  end
end

def hit(dck, hand, player)
  card = deal(dck, hand)
  prompt "#{player.capitalize} chose to hit."
  pause_and_space
  prompt "#{player.capitalize} was dealt: #{card}."
  pause_and_clear
end

def stay_message(player)
  prompt "#{player.capitalize} chose to stay."
  pause_and_clear
end

def busted_message(player)
  system 'clear'
  prompt "#{player.capitalize} busted!"
  pause_and_space
end

def busted?(total)
  total > MAX
end

def total_non_ace(hand)
  hand[0].map { |card| CARD_VALUES[card] }.sum
end

def num_of_aces(hand)
  hand[1].size
end

def total(hand)
  current_total = total_non_ace(hand)
  num_of_aces(hand).times do
    ace = current_total <= (MAX - 11) ? 11 : 1
    current_total += ace
  end
  current_total
end

def determine_winner(total_plyr, total_dlr)
  if total_plyr <= MAX && (total_plyr > total_dlr || busted?(total_dlr))
    :player
  elsif total_plyr < total_dlr || busted?(total_plyr)
    :dealer
  end
end

def winning_message(wnr)
  case wnr
  when :player then prompt 'You won this round!'
  when :dealer then prompt 'Dealer won this round.'
  when nil then prompt "It's a tie!"
  end
  pause_and_space
end

def initialize_score
  { player: 0, dealer: 0 }
end

def keep_score(wnr, score)
  score[wnr] += 1 if wnr # wnr nil if tie from determine_winner
end

def display_score(score)
  prompt "Player: #{score[:player]}"
  prompt "Dealer: #{score[:dealer]}"
  pause_and_space
end

def play_again?
  choice = nil
  while choice.nil?
    prompt 'Would you like to play again? Type Y or N'
    answer = gets.chomp.downcase
    choice = case answer
             when 'y' then true
             when 'n' then false
             else
               prompt "That's not a valid choice."
             end
  end
  choice
end

def champion(score)
  score.key(5) # returns player with 5 wins, nil if no one is champ yet
end

def champion_message(score)
  prompt "#{champion(score).capitalize} is the champion!"
  pause_and_space
end

def goodbye_message
  prompt 'Thank you for playing Twenty-One. Goodbye!'
end

system 'clear'
welcome_message
scores = initialize_score

loop do
  system 'clear'
  deck = initialize_deck

  player_hand = [[], []]
  dealer_hand = [[], []]

  initial_deal(deck, player_hand, dealer_hand)
  dealer_card = one_dealer_card(dealer_hand)

  player_total = total(player_hand)
  dealer_total = total(dealer_hand)

  loop do
    loop do
      display_dealer_card(dealer_card)
      display_hand(player_hand, :player, player_total)
      this_turn = hit_or_stay
      hit(deck, player_hand, :player) if this_turn == 'Hit'
      player_total = total(player_hand)
      break if this_turn == 'Stay' || busted?(player_total)
    end

    if busted?(player_total)
      busted_message(:player)
      break
    end

    stay_message(:player)

    loop do
      display_hand(dealer_hand, :dealer, dealer_total)
      break if dealer_total >= HIT_UNTIL || busted?(dealer_total)

      hit(deck, dealer_hand, :dealer)
      dealer_total = total(dealer_hand)
    end

    if busted?(dealer_total)
      busted_message(:dealer)
    else
      stay_message(:dealer)
    end

    break
  end

  display_hand(dealer_hand, :dealer, dealer_total)
  display_hand(player_hand, :player, player_total)

  winner = determine_winner(player_total, dealer_total)
  winning_message(winner)
  keep_score(winner, scores)
  display_score(scores)

  if champion(scores)
    champion_message(scores)
    break unless play_again?

    scores = initialize_score # reset to 0
  else
    break unless play_again?
  end
end

goodbye_message
