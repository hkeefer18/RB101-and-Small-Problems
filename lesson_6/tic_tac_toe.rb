INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = 'Choose'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength
def player_choice
  choice = nil
  until choice
    prompt 'Who would you like to go first?'
    prompt 'Type 1 if you would like to go first.'
    prompt 'Type 2 if you would like the computer to go first.'
    choice = case gets.chomp.to_i
             when 1 then 'Player'
             when 2 then 'Computer'
             else
               prompt "That's not a valid choice."
             end
  end
  choice
end
# rubocop:enable Metrics/MethodLength

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delim = ', ', join = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr[0].to_s
  when 2 then arr.join(" #{join} ")
  else
    string = ''
    arr[0..-2].each { |ele| string << ele.to_s + delim }
    string << join + ' ' + arr[-1].to_s
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def ai_choice(brd, line, which_player)
  markers = brd.values_at(*line) # example: ['X', 'X', ' '] - values from board hash
  return line[markers.index(' ')] if markers.count(which_player) == 2 &&
                                     markers.include?(INITIAL_MARKER)
  # markers.index(' ') returns index of empty square, which is used
  # to access the square number in the winning line
end

def computer_choice(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    square = ai_choice(brd, line, marker)
    break if square
  end
  square
end

def computer_places_piece!(brd)
  square = computer_choice(brd, COMPUTER_MARKER)
  square ||= computer_choice(brd, PLAYER_MARKER) # only reassigns if nil
  square ||= 5 if empty_squares(brd).include?(5)
  square ||= empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_plyr)
  if current_plyr == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_plyr)
  return 'Computer' if current_plyr == 'Player'
  return 'Player' if current_plyr == 'Computer'
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def initialize_score
  { player: 0, computer: 0 }
end

def keep_score(winner, scr_hsh)
  case winner
  when 'Player' then scr_hsh[:player] += 1
  when 'Computer' then scr_hsh[:computer] += 1
  end
end

def display_score(scr_hsh)
  puts "=> Player: #{scr_hsh[:player]}"
  puts "=> Computer: #{scr_hsh[:computer]}"
end

def champion(scr_hsh)
  return 'Player' if scr_hsh[:player] == 5
  return 'Computer' if scr_hsh[:computer] == 5
end

def finish_game?(string)
  prompt ' '
  prompt string
  prompt 'Type Y to play again, any other key to quit.'
  answer = gets.chomp.downcase
  true unless answer.include?('y' || 'yes')
end

score = initialize_score

loop do
  system 'clear'

  current_player = FIRST_PLAYER == 'Choose' ? player_choice : FIRST_PLAYER

  board = initialize_board

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  someone_won?(board) ? prompt("#{detect_winner(board)} won!") : prompt("It's a tie!")

  keep_score(detect_winner(board), score)
  display_score(score)

  if champion(score)
    prompt "#{champion(score)} won the game!"
    break if finish_game?('Would you like to play another game?')

    score = initialize_score
  elsif finish_game?('Continue playing?')
    break
  end
end

prompt 'Thanks for playing Tic Tac Toe! Good bye!'
