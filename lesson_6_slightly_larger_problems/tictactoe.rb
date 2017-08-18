=begin
1. Display the initial empty 3x3 board. •
2. Ask the user to mark a square. •
3. Computer marks a square. •
4. Display the updated board state.  •

5. If winner, display winner. •
6. If board is full, display tie. •
7. If neither winner nor board is full, go to #2 •
8. Play again?
9. If yes, go to #1
10. Good bye!
=end
require 'pry'

count = 0 
game_board = Array.new(9) #initial array [{pos1},{pos2},{pos3}]
position = nil
WINNING_STATES = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]] #winning states
BOARD_SIZE = game_board.length

puts ' '   
puts 'Welcome to TicTacToe ==>' 
puts 'Let\'s mark the first square'


def show_board(choice) 
print "| #{choice[0].nil? ? " ": choice[0].values[0] } | #{choice[1].nil? ? " ": choice[1].values[0]} | #{choice[2].nil? ? " ": choice[2].values[0]} |\n"
print "| #{choice[3].nil? ? " ": choice[3].values[0] } | #{choice[4].nil? ? " ": choice[4].values[0]} | #{choice[5].nil? ? " ": choice[5].values[0]} |\n"
print "| #{choice[6].nil? ? " ": choice[6].values[0] } | #{choice[7].nil? ? " ": choice[7].values[0]} | #{choice[8].nil? ? " ": choice[8].values[0]} |\n"
end 

def set_position(player, position, board)
  memory = Hash.new
  if player == 'human'
    memory[position] = 'X'               #build choice hash
    board[position] = memory            #choice is stored in board 
  else player == 'computer'
    memory[position] = 'O'
    board[position] = memory  
  end 
end  

def position_available?(position, game_board)
  if game_board.compact.empty? 
     return false
  elsif game_board.compact.map {|x| x.keys }.flatten.include?(position)
    return 'please choose another position, this was already taken' 
  else 
    return false
  end   
end 

def congratulate_winner(win_state)
  if win_state.include?('X')
    return 'Congratulations, you beat the computer.'
  elsif win_state.include?('O')
    return 'Unfortunately, the computer whooped you. Sorry'
  end   
end

def determine_winner(win_state, game_board)
  choice = win_state.map {|position| game_board[position].values}
  choice = choice.flatten
  if choice.uniq.length == 1
    return choice.uniq[0]
  else 
    return false
  end 
end

def check_win_state(game_board)
  count = 0
  win_state = nil
    loop do 
     win_block = WINNING_STATES[count] 
       loop do 
         if win_block.select {|position| game_board[position]}.count == 3  
            win_state = win_block.select {|position| game_board[position]} #perch for variable setting
           if determine_winner(win_state, game_board)
             win_state = determine_winner(win_state, game_board)
             break(2)
           end 
         else
           break(2) 
         end
       end 
      break if count > 3
      count += 1
    end
  win_state
end 
  
def tied_game?(game_board)
  if game_board.compact.length == BOARD_SIZE
    puts "Board is full - This game is a draw"
    return true
  else 
    return false
  end
end 

def player_choose_position(game_board) 
  available = [] 
  BOARD_SIZE.times do |x|
     if game_board[x].nil?
        available << x
     end
  end
  print "Player choose a position: #{join_or(available)}"
end 

def join_or(available_positions)
   last = available_positions[-1] ; available_positions[-1] = 'or'
   available_positions.<<(last)
   available_positions.join(", ")
end 

def player_score(player, score)
  score << player
end 

score = []
# Mainloop - memory used here

loop do   #MAIN GAME LOOP

   loop do 
      puts player_choose_position(game_board) # "===> Player choose a position from 0 - 8"
      position = gets.chomp      
      next 'please choose a value that is a number' if !position.respond_to?(:to_i) 
       if position_available?(position, game_board) == false
          set_position('human', position.to_i, game_board)  
       else 
         next
       end 
    break        
   end

   show_board(game_board)
   win_state = check_win_state(game_board)  
    
   if !win_state.nil? 
    puts congratulate_winner(win_state)
    break 
   end


   sleep(1)
   puts 'Computer is taking it\'s turn'
   sleep(1)

   loop do 
    position = rand(10)
      if position_available?(position, game_board) == false
        set_position('computer', position.to_i, game_board)
      else 
        next
      end 
    break 
   end 

   sleep(1)
   show_board(game_board)
   win_state = check_win_state(game_board)

   if !win_state.nil? 
     player_score()
     puts congratulate_winner(win_state)
     break 
   end   
   
   count += 1 
   break if count > 4 
end 
