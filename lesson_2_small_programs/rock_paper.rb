require 'pry'
# the user makes a choice
# the computer makes a choice
# the winner is displayed
puts '=> Let\'s Play Rock Paper Scissors'

def choose_winner(user, computer)
  if choice(user) == choice(computer)
    puts 'draw'
  elsif choice(user) == 'rock'
    if choice(computer) == 'scissor'
      puts  'user wins'
    elsif choice(computer) == 'paper'
      puts  'you lose'
    end
  elsif choice(user) == 'paper'
    if choice(computer) == 'rock'
      puts  'user wins'
    elsif choice(computer) == 'scissor'
      puts  'you lose'
    end
  elsif choice(user) == 'scissor'
    if choice(computer) == 'paper'
      puts  'user wins'
    elsif choice(computer) == 'rock'
      puts  'you lose'
    end
  end
end

def choice(selection)
  case selection
  when 1
    'rock'
  when 2
    'paper'
  when 3
    'scissors'
  end
end

loop do
  user_choice = 0
  computer_choice = 0

  loop do
    puts 'Choose your weapon!'
    print '1) Rock 2) Paper 3)Scissors'
    user_choice = gets.chomp.to_i
    if Integer(user_choice)
      puts "=> You chose #{choice(user_choice)}"
      break "It's now the Computer's turn"
    end
  end

  loop do
    puts '=> The Computer is choosing..'
    sleep(1)
    computer_choice = 1 + rand(3)
    puts "Computer chose #{choice(computer_choice)}"
    break
  end

  sleep(2)
  choose_winner(user_choice, computer_choice)

  puts 'Would you like to play again y/n'
  play_again = gets.chomp
  if play_again == 'y'
    next
  elsif play_again == 'n'
    break
  else
    puts 'Invalid Choice'
  end
end
