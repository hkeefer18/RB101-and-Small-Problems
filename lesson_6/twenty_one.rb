def initialize_deck
  deck = []
  cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  cards.each { |card| 4.times { deck << card } }
  deck
end

def shuffle(dck)
  dck.shuffle!
end

def deal(dck, hand)
  hand << dck.pop
end

def prompt(msg)
  puts "=> #{msg}"
end

def joinand(arr)
  case arr.size
  when 2 then arr.join(" and ")
  else
    string = ''
    arr[0..-2].each { |ele| string << ele.to_s + ', ' }
    string << 'and ' + arr[-1].to_s
  end
end

def number_of_aces(hand)
  hand.select { |card| card == 'Ace'}.size
end

def ace_value(hand, aces_total)
  all_but_aces = hand.select { |card| card != 'Ace' }
  count = total_without_aces(all_but_aces) + aces_total
  case
  when count <= 10 then 11
  when count > 10 then 1
  end
end

def total_without_aces(hand)
  hand.map do |card|
    if card.to_s_to_i == card
      card
    elsif card == 'Jack' || card == 'Queen' || card == 'King'
      10
    else
      0
    end
  end.sum
end

def total(hand, aces)
  total_without_aces(hand) + aces
end

def hit(dck, hand)
  deal(dck, hand)
  prompt "You have: #{join(hand)}"
  prompt "Your total is #{total(hand)}"
end

def player_turn(dck, hand)
  prompt 'Would you like to hit or stay? Type H or S'
  answer = gets.chomp
  case answer.downcase
  when 'h' then hit(dck, hand)
  when 's' then stay(hand)
  else
    prompt "That's not a valid choice."
  end
end

deck = initialize_deck
shuffle(deck)

player_hand = []
dealer_hand = []

2.times { deal(deck, player_hand) }
2.times { deal(deck, dealer_hand) }

aces_total = 0
aces total += ace_value(player_hand, aces_total)