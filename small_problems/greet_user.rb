# goal: Write a program that will ask for user's name. The program will then greet the user. If the user writes
#        "name!" then the computer yells back to the user.


print 'whats your name? :     '
  name = gets.chomp

  if name == 'name!' 
    print 'That\'s not your name'
  else 
    puts "Nice, to meet you #{name}"
  end 
  
 
  
